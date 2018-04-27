[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load .bashrc

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# set up nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jeffrey/dev/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jeffrey/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jeffrey/dev/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jeffrey/dev/google-cloud-sdk/completion.bash.inc'; fi
