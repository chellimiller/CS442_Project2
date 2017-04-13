# Project II - ls Command
__Class:__    Systems Programming (CS442) at University of Wisconsin Stout

__Student:__  Michelle Miller

__Due Date:__ May 1, 2017


## Overview

ls command for Windows written as a .bat by Michelle Miller


## Requirements
1. User can specify file or directory on command line
    - If file specified, display information on file
    - If directory specified, display information and contents
    - If nothing specified, use current working directory
    - Not necessary to account for wild cards
2. Accept optional parameter "-R" for searching directories recursively
3. Do __NOT__ ignore files or directories starting with "."
4. Print summary including:
    - Total files
    - Total directories
    - Total links
    - Total other
    - Total entries
### Notes:
 - It may make sense __NOT__ to follow links when -R is specified
 - The command should print detailed info similar to the Linux ls command
 - This command can be written in any reasonable language
 - It would be ideal if user/group info was displayed as text rather than numeric value


## Tasks
 - [x] Determine if -R option is there
 - [x] Set current working directory as input if nothing specified
 - [ ] Determine if input arg is directory or file
 - [ ] Determine if path is relative or absolute
 - [ ] Format dir output

More tasks may be added 
