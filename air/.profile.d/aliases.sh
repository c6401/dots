alias aliases='nvim ~/.profile.d/aliases.sh'
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
alias py='uv run python'
alias v='nvim'
alias katamari='nvim /Volumes/swap/Sync/katamari/'
alias gemma='ollama run gemma3'
alias proofread='ollama run gemma3 please proofread: "$(pbpaste)" | tee >(pbcopy)'

function y() {local tmp="$(mktemp -t "yazi-cwd.XX")" cwd
yazi "$@" --cwd-file="$tmp"
IFS= read -r -d '' cwd <"$tmp"
builtin cd -- "$cwd"
rm -f -- "$tmp"}
