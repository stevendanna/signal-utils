# signal-utils

Signal utils provides small command line utilities for working with
and debugging signals on Linux.

## sigign

    sigign SIGNAL[,SIGNAL...] COMMAND

`sigign` starts COMMAND with the specified SIGNALs disposition set to
SIG_IGN.

## sigstat

    sigstat PID    

`sigstat` lists any signals with a non-default disposition for the given process ID.  This command requires procfs to be mounted.

## sigunmask

    sigunmask MASK

`sigunmask` takes a signal mask in the form listed in `/proc/PID/status` and returns a list of the masked signals by name.

## Known Bugs

- `sigign` does not work for SIGPIPE.  Ruby's interpreter changes SIGPIPE's disposition before exec().

- `sigunmask` and `sigstat` does not list the names of real-times signals (>32).