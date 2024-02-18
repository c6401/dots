brew install stow
mkdir -p ~/.profile.d
stow --adopt base-zsh
stow --adopt unix-bin-path
stow --adopt unix-pyenv
stow --adopt mac-doom-autosave

# gitconfig
mkdir -p ~/.gitconfig.d
stow unix-git-config-d
git config --global include.path ~/.gitconfig.d/reconfigure
stow unix-git-aliases
stow unix-git-base
git reconfigure