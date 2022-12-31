function cd () {
  builtin cd "$@"
  local IFS=$';'
  for f in $POST_CD; do
    "$f"
  done
  unset IFS
}

function _localprofile () {
  if [ -f .localprofile ]; then
    . .localprofile
  fi
}

POST_CD="_localprofile"

_localprofile
