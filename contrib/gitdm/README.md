# Git statistics about who wrote kubernetes

./run.sh should give statistics about who made changes to kubernetes.  For example:

Stats for the entire lifetime of the project:
```
./run.sh
```

Stats from some point in time to another:
```
./run.sh v0.14.0..v0.15.0
```

This relies on the git data mine code available at git://git.lwn.net/gitdm.git

You either need gitdm in your path or you need to tell kubernetes where it lives by setting the `GITDM` environment variable.

```
GITDM=/home/eparis/gitdm/gitdm ./run.sh v0.14.0..HEAD
```
