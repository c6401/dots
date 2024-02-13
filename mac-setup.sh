brew install stow
mkdir -p ~/.profile.d
touch ~/.profile.d/noop.sh
stow --adopt base-zsh
