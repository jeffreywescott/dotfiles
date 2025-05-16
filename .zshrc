[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load .profile

fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

PROMPT='%F{002}%B%m:%~%b %#%f '
