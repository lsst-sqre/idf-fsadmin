idf-fsadmin
===========

This is a tool for mounting the filesystems at a given IDF instance,
with root privilege, for doing manual filesystem work.

It should only be used by SQuaRE.

It should not be part of Phalanx.

If you need it, create the fsadmin namespace if it's not there, and then `kubectl apply -f` the appropriate file.  Keep this repository updated as we change volumes.
