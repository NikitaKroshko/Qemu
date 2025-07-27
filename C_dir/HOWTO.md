# How to ARM dump

This is for macos zsh experience.

First compile c with gcc
Then objdump the compiled file
Save that dump to a text file.

All together it looks like for filename program.c

gcc program.c -o program.out && objdump -d program.out > program.txt
