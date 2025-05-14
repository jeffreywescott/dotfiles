[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load .profile

autoload -Uz compinit
compinit

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

PROMPT='%F{002}%B%m:%~%b %#%f '
