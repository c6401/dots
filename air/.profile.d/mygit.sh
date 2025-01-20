export MYGITDIR='.mygit'
alias mg-set='export MYGITTREE="$PWD"'
alias mg-init='git init --bare "$MYGITTREE/$MYGITDIR"'
alias mg-hide-untracked="mg config --local status.showUntrackedFiles no"
alias mg='/usr/bin/git --git-dir="$MYGITTREE/$MYGITDIR" --work-tree="$MYGITTREE"'
