
git config user.name 'c6401'
git config user.email 'nc6401+gh@gmail.com'
xargs brew install < mac-brew-apps.txt
xargs brew install --cask < mac-brew-cask-apps.txt
stow git-aliases
stow git-shortaliases
git config --global --unset-all include.path
git config --global --add include.path .gitconfig.d/shortaliases.config
git config --global --add include.path .gitconfig.d/aliases.config
