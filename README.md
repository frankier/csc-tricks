# csc-tricks
Tricks and configs for CSC (national HPC service Finland)

## Fixing singularity pull

The directory `fix_singularity_pull` contains scripts which can be placed in a
directory at the beginning of your `$PATH` e.g. `~/bin`. Running
`singularity_pull` will run a Singularity pull on an interactive node.

### ...and fixing mksquashfs too!

It also contains a way to configure `mksquashfs`. However, you should start by
downloading and compiling a newer version of mksquashfs, since the version on
CSC is old, and many optimisations have been made since:

    $ git clone --depth 1 https://github.com/plougher/squashfs-tools.git

You can then build it like so:

    $ cd squashfs-tools/squashfs-tools && make

If you are not using CSC, you might like to modify `~/bin/mksquashfs` to
request the amount of resources available on the node you are pulling on.

