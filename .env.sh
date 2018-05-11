export VSCODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export EDITOR="$VSCODE_BIN/code -w"
export PATH="\
$HOME/bin:\
/usr/local/sbin:\
/usr/local/share/npm/bin:\
/usr/local/heroku/bin:\
$PATH:\
/Applications/Visual Studio Code.app/Contents/Resources/app/bin\
"

export NPM_AUTH_TOKEN=$(cat $HOME/.npmrc | grep _authToken | cut -d '=' -f2)
export NODE_ENV="development"

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
