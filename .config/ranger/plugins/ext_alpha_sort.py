import os
from ranger.container.directory import Directory

def sort_by_extension_alphabetically(path):
    if path.basename.startswith('.'):
        return (3, path.basename.lower())  # Dot files are sorted last
    elif path.is_directory:
        return (1, path.basename.lower())  # Directories are sorted first
    else:
        # Extract extension
        _, extension = os.path.splitext(path.basename)
        extension = extension.lower()  # Convert to lowercase
        return (2, extension, path.basename.lower())  # Sort by extension, then by filename

Directory.sort_dict['ext_alpha'] = sort_by_extension_alphabetically
