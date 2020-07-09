# find_compile_database

Hacky script to find a compile database for a file or directory

Call it and pass a file name, a directory, or nothing, and it will find the nearest compilation database for that.
If a filename is passed, it will check if the file (or the equivalent source file, for header files) is in the compilation database, and if not then it will continue the search.

Searches for, in order of preference:

- Colcon workspace compilation database
- Individual package compilation database in a Colcon workspace
- Compilation database in a `build` subdirectory of the current or a parent directory, going back up to root or the maximum number of steps up the directory hierarchy
- Compilation database in the current or a parent directory, going back up to root or the maximum number of steps up the directory hierarchy
