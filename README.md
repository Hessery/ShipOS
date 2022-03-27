# ShipOS
 
ShipOS is a fantasy operating system built from scratch in Gamemaker Studio 2.

A few noteable features of ShipOS are:
- There is no internal distiction between programs and functions, but are just refered to as functions.
- Functions are lexed and run line by line, similar to the JIT model.

The system currently has:
- An internal file structure.
- Program files (*.sos)
- Yank, a basic programming lanuguage with:
 - Keywords: IF END VAR GLOBAL and RETURN
 - Commands: PRINT SHUTDOWN STARTUP RUN and RESTART
 - Global and local scoped memory.
 - Argument passing to functions and programs.
