# Example-Assembly


Using Borlands Turbo Assebler to create Hello, World example.

Running in DoxBox on Windows 10
First mount the tasm folder.
mount c c:\tasm\

Commands:
tasm /l /zi hello_world.asm
tlink /v hello_world.obj io.obj

