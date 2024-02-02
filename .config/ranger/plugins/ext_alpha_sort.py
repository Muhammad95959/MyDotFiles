# Compatible with ranger 1.6.0 through 1.7.*
#
# This plugin adds the sorting algorithm called 'ext_alpha' to sort by extension alphabetically.
# To enable it, type ":set sort=ext_alpha" or create a key binding with ":map oea set sort=ext_alpha"

from __future__ import (absolute_import, division, print_function)

from locale import strxfrm
from ranger.container.directory import Directory

def sort_by_extension_alphabetically(path):
    if path.basename.startswith('.'):
        return (3, strxfrm(path.basename.lower()))  # Dot files are sorted last
    elif path.is_directory:
        return (1, strxfrm(path.basename.lower()))  # Directories are sorted first
    else:
        # Handle cases where the file doesn't have an extension
        extension = path.extension.lower() if path.extension else ''
        return (2, strxfrm(extension))  # Non-dot files are sorted second by extension

Directory.sort_dict['ext_alpha'] = sort_by_extension_alphabetically
