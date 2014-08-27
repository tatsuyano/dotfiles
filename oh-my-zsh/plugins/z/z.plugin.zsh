_Z_CMD=j
source $ZSH/plugins/z/z.sh
precmd() { _z --add "$(pwd -P)" }
