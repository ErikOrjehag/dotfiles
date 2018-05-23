<H1>Dotfiles</H1>
On a new machine, do git then create symlinks for all the files.

```
git clone git@github.com:walecome/dotfiles.git
cd dotfiles/
./init.sh
```

This moves all clones files to ```$HOME/.dotfiles/``` and creates symlinks to some of their respective directories. If ```$HOME/.dotfiles/``` already exists the script exits.

Cinnamon:\
https://github.com/linuxmint/Cinnamon/wiki/Backing-up-and-restoring-your-cinnamon-settings-(dconf)


Useful links:\
https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon