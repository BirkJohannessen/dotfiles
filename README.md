# dotfiles

[dotfiles, described by the Arch wiki:](https://wiki.archlinux.org/title/Dotfiles)

User-specific application configuration is traditionally stored in so called dotfiles (files whose filename starts with a dot). It is common practice to track dotfiles with a version control system such as Git to keep track of changes and synchronize dotfiles across various hosts. There are various approaches to managing dotfiles (e.g. directly tracking dotfiles in the home directory v.s. storing them in a subdirectory and symlinking/copying/generating files with a shell script or a dedicated tool)

These dotfiles are managed by GNU stow, achieving central symlinking for every single linux configuration.  

## about

These personal configurations includes but not limited to:

* Neovim
* Ideavim (intellij)
* i3 windows manager
* tmux
* kitty
* bash aliases
* bashrc

## install

1. Run depencency install 
```
$ ./install fresh
```

2. Next commands are setup to user standing in stow/ directory.
```
$ cd stow/
```

3. Run GNU stow
```
$ stow -t /home/$USER .
```

or set specific config
```
$ stow -t /home/$USER nvim
```

view conflicts:
```
$ stow -t /home/$USER . --adopt
$ git status
$ git diff
..
$ git checkout .
```

4. sub installation scripts. 
```
$ ./install help
..
$ ./install kitty
$ ./install nvim
$ ./install i3
$ ./install tmux
```
