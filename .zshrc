[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load .profile

PROMPT='%F{002}%B%m:%~%b %#%f '

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/jeffreywescott/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
