alias aliases='nvim ~/.profile.d/aliases.sh'
alias g='git'
alias htmlmd="pandoc -f html -t markdown"
alias katamari='nvim /Volumes/swap/Sync/katamari/'
alias la='eza -la'
alias ll='eza -l'
alias ls='eza'
alias md="pandoc -f html -t markdown"
alias proofread='ollama run gemma3 please proofread: "$(pbpaste)" | tee >(pbcopy)'
alias py='uv run python'
alias snip='(cd /Volumes/Swap/Sync/projects/snippets && nvim )'
alias v='nvim'
alias uuid='uv run python -c "import uuid; print(uuid.uuid4())"'
alias z='zoxide'
alias dlpod='yt-dlp --embed-chapters --embed-thumbnail --extract-audio --audio-format mp3 --audio-quality 0 "$@"'
alias co='git checkout $(git branch | fzf --height 40% --layout=reverse --ansi)'
alias trash='osascript -e "tell application \"Finder\" to move the POSIX file \"$1\" to the trash"'


function px() {
  // python execute
  uv run python -c "i=type('_',(),{'__getattr__':lambda s,m: __import__(m)})(); x='' if i.sys.stdin.isatty() else i.sys.stdin.read(); print($*)"
}

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
