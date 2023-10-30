#!/bin/sh
# Envolvedor de lf, que permite crear previsualizaciones de imágenes
# con ueberzug, en conjunto con mi configuración 'previewer' y 'cleaner' para lf
# Taken from: https://github.com/LukeSmithxyz/voidrice/blob/master/.local/bin/lfub
# TODO:
# - Capturar cuando se cierre/mate la ventana conteniendo la terminal que corre
#	este script, pues si no se quedarán procesos huérfanos 'lf' 'lfub' 'ueberzug'

set -e
: "${XDG_CACHE_HOME:="${HOME}/.cache"}"

cleanup() {
	exec 3>&-
	# FIXME:
	# after SIGINT commands that expected some arguments, previews for that directory
	# are stuck in "loading", because there's no fifo file to remove or something
	# Example:
	# gpg -d  # ← Forgot to type $f for decrypting a file
	# Ctrl-C  # ← Back to lf, previews are stuck
	rm "$FIFO_UEBERZUG"
}

main() {
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		lf "$@"
	else
		[ -d "${XDG_CACHE_HOME}/lf" ] || mkdir -p "${XDG_CACHE_HOME}/lf"
		export FIFO_UEBERZUG="${XDG_CACHE_HOME}/lf/ueberzug-$$"
		mkfifo "$FIFO_UEBERZUG"
		ueberzug layer -s < "$FIFO_UEBERZUG" -p json &
		exec 3> "$FIFO_UEBERZUG"
		trap cleanup HUP INT QUIT TERM PWR EXIT
		lf "$@" 3>&-
	fi
}

main "$@" || exit $?
