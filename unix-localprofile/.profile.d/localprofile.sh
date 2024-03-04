function cd() {
  builtin cd "$@"
  for hook in "${CD_HOOKS[@]}"; do
    $hook
  done
}

function _localprofile_load() {
  if [ -f .localprofile ]; then
    . ./.localprofile
  fi
}

CD_HOOKS=(_localprofile_load)
