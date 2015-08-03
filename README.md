# pmocek/dotfiles #

Phil Mocek's [dotfiles](https://dotfiles.github.io/).  These are used with
Anders Ingemann's [homeshick](https://github.com/andsens/homeshick), a Git
dotfiles synchronizer written in Bash that [is loosely based
on](https://github.com/andsens/homeshick/wiki/homeshick-and-homesick) Josh
Nichols' [homesick](https://github.com/technicalpickles/homesick) ("Your home
directory is your castle. Don't leave your dotfiles behind.")

## Homeshick ##

To [install Homeshick](https://github.com/andsens/homeshick/wiki/Installation):

    mkdir -pv $HOME/.homesick/repos
    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

Create an alias "homeshick" by sourcing homshick.sh in the newly-cloned
repository upon login:

    printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc

Arrange tab completion by sourcing homeshick-completion.bash:

    printf '\nsource "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"' >> $HOME/.bashrc

See the Homeshick docs for
[bootstrapping](https://github.com/andsens/homeshick/wiki/Tutorials#bootstrapping)
and [adding machines](https://github.com/andsens/homeshick/wiki/Tutorials#adding-other-machines).
