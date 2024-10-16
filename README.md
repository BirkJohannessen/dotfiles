# dotfiles

##install
1. run 
```
$ ./install fresh
```

2. next command will produce unwanted sideeffects without standing in the stow/ directory.
```
$ cd stow/
```

3.
```
$ stow -t /home/$USER .
```

view conflicts:
```
$ stow -t /home/$USER . --adopt
$ git status
$ git diff
..
$ git checkout .
```

