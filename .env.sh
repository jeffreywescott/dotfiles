export VSCODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export EDITOR="$VSCODE_BIN/code -w"
export PATH="\
$HOME/bin:\
/usr/local/sbin:\
/usr/local/share/npm/bin:\
./node_modules/.bin:\
/usr/local/heroku/bin:\
$PATH:\
/Applications/Visual Studio Code.app/Contents/Resources/app/bin\
"

export NPM_AUTH_TOKEN=$(cat $HOME/.npmrc | grep _authToken | cut -d '=' -f2)
export NODE_ENV="development"
