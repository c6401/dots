ash
git clone https://github.com/c6401/dots.git
cd dots
rm -rf termux/.config/emacs
git submodule init
git submodule update termux
rm -rf ~/.config/emacs/

stow --no-folding termux

~/.config/emacs/bin/doom install
n
~/.config/emacs/bin/doom sync

emacs


ssh-keygen -t ed25519 -C "nc6401@gmail.com"
# delete remote
git remote remove origin
# rename remote
git remote rename o origin



curl -fLo ./termux/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git su

andr

nv

nvim ~/.bashrc




