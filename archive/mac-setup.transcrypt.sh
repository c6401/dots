grep -v '^#' ./mac-brew-tap.txt | xargs brew tap
grep '^#' ./mac-brew-tap.txt | sed 's/^# //' | xargs brew untap

grep -v '^#' ./mac.brew.txt | xargs brew install
grep '^#' ./mac.brew.txt | sed 's/^# //' | xargs brew uninstall

grep -v '^#' ./mac-brew-cask-apps.txt | xargs brew install --cask
grep '^#' ./mac-brew-cask-apps.txt | sed 's/^# //' | xargs brew uninstall

mkdir -p ~/.profile.d
stow --adopt base-zsh
stow --adopt unix-bin-path
stow --adopt unix-pyenv
stow --adopt mac-doom-autosave
stow mac-espanso-snip
stow mac-espanso-common

# gitconfig
mkdir -p ~/.gitconfig.d
stow unix-git-config-d
git config --global include.path ~/.gitconfig.d/reconfigure
stow unix-git-aliases
stow unix-git-base
git reconfigure

sudo which supervisorctl
sudo rm /opt/homebrew/etc/supervisord.conf


export config_dir=/opt/homebrew/etc/supervisord.conf
sudo echo_supervisord_conf > $config_dir
sudo echo '[include]' >> $config_dir
sudo echo files = ~/.config/supervisor/\*.conf >> $config_dir
sudo vim $config_dir
sudo unlink /opt/homebrew/var/run/supervisor.sock


vim /opt/homebrew/etc/supervisord.conf
sudo supervisord --nodaemon -c /opt/homebrew/etc/supervisord.conf

brew services info supervisor
brew services stop supervisor 
brew services start supervisor

sudo supervisorctl status
sudo supervisorctl reread
sudo supervisorctl start cgiserver

sudo supervisorctl update
sudo supervisorctl status
sudo supervisorctl stop all

stow --no-folding mac-supervisor-git-sync

cat /opt/homebrew/var/log/supervisord.log
echo $TMPDIR
# open /var/folders/6z/n72r4ydx0l72h5k365hf1xnr0000gn/T/
# set [filter "git-crypt"] smudge = \"/opt/homebrew/bin/git-crypt\" smudge
cd /Volumes/swap/tasks

git config filter.git-crypt.smudge "/opt/homebrew/bin/git-crypt smudge"
git config filter.git-crypt.clean "/opt/homebrew/bin/git-crypt clean"
git config filter.git-crypt.required true
git config diff.git-crypt.textconv "/opt/homebrew/bin/git-crypt diff"

# list submodules
git submodule init
git submodule add --name doom --force https://github.com/doomemacs/doomemacs ./termux/.config/emacs
git submodule status
git submodule update

git submodule add --name copilot https://github.com/github/copilot.vim.git ./termux/.vim/pack/github/start/copilot.vim

stow --no-folding air




rm -rf air/.config/emacs
rm -rf ~/.config/emacs
rm -rf ~/.config/doom
# git submodule add --name doom --force https://github.com/doomemacs/doomemacs ./air/.config/emacs
# git submodule init air
# git submodule update air
stow -D air
stow --no-folding air
git clone https://github.com/doomemacs/doomemacs ~/.config/emacs


~/.config/emacs/bin/doom install
n
~/.config/emacs/bin/doom sync

Support/espanso/match/private.yml is not a valid attribute name: .gitattributes:2

# remove submodule
git submodule deinit -f -- ./termux/.config/emacs
git rm -r ./termux/.config/emacs
rm -rf .git/modules/termux/.config/emacs

git submodule deinit -f -- ./air/.config/emacs
git rm -r ./air/.config/emacs
rm -rf .git/modules/air/.config/emacs

sudo port uninstall nautilus
sudo port clean --all installed

# setup ssh agent
ssh-add -K ~/.ssh/id_ed25519

llm install -U llm-gpt4all
llm -m Meta-Llama-3-8B-Instruct "Three great names for a pet emu"
llm aliases set l37 Meta-Llama-3-8B-Instruct
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "expose-group-apps" -bool "true"
killall Dock
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
killall Finder
defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool "true"
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
# Disable automatic period 
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
npm i -g wikit
pipx ensurepath
defaults write com.apple.dock wvous-br-corner -int 0

# 12:00 PM commit using at
echo "git -C ~/Projects/air commit -am 'daily commit' && git -C ~/Projects/air push" | at 12:00 PM
# install explain shell
pipx install explainshell




git clone https://github.com/axvr/org.vim ~/.vim/pack/plugins/start/org
vim +'helptags ~/.vim/pack/plugins/start/org/doc/' +q
vim /Volumes/swap/tasks/tasks/tasks.org
vim ~/.vim/vimrc
syntax enable
filetype plugin indent on

set filetype=org
let g:org_clean_folds = 0
-- vim map folding on tab
map <Tab> za
-- vim alt down to shift+v x p
map <A-Down> Vxp
map <A-Up> VxkP
autocmd BufRead,BufWrite *.org :%s/^\s\+/*/g
brew tap Homebrew/bundle

cd air-setup

go install github.com/mrusme/reader@latest

defaults write com.apple.dock autohide-time-modifier -float 0.1; killall Dock

git clone --depth=1 https://github.com/pindexis/marker ~/.marker && ~/.marker/install.py