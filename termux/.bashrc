for file in ~/.profile.d/**/*.sh
do
  source $file
done

CDPATH="$HOME:$HOME/storage/downloads/Sync"

export gh="https://github.com/c6401"
alias nv="nvim"
alias nn="(cd tasks && git pull --rebase origin main && emacs inbox.org && git commit -a -m - && git push)"
alias tt="(cd tasks && git pull --rebase origin main && emacs tasks.org && git commit -a -m - && git push)"

alias ml="himalaya"
alias mlb="himalaya -a psg"
alias mlc="himalaya -a cy"
alias r='. ranger'
