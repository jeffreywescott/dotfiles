export EDITOR="cursor -w"
export PATH="\
$HOME/bin:\
/opt/homebrew/bin:\
/usr/local/sbin:\
/usr/local/share/npm/bin:\
/opt/homebrew/bin:\
$PATH:\
"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Adds node_modules/.bin to the PATH
npm_chpwd_hook() {
    if [ -n "${PRENPMPATH+x}" ]; then
        PATH=$PRENPMPATH
        unset PRENPMPATH
    fi
    if [ -f package.json ]; then
        PRENPMPATH=$PATH
        PATH=$(npm bin):$PATH
    fi
}
