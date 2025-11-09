alias g='git'
alias htmlmd="pandoc -f html -t markdown"
alias ml="himalaya"
alias mlb="himalaya -a psg"
alias mlc="himalaya -a cy"
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias xls='/bin/ls'
alias xcat='/bin/cat'
alias z='zoxide'
alias xcd='/bin/cd'
alias py='python'
alias v='nvim'
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
