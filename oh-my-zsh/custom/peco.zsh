# peco-select-history 
# (http://shibayu36.hatenablog.com/entry/2014/06/27/223538)
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# peco-select-host
# 
function peco-select-host () {
    host=$(grep -iE '^host\s+(\w|\d)+' ~/.ssh/config | awk '{print $2}' | peco)

    if [ -n "$host" ]; then
        ssh $host
    fi
}
alias hs=peco-select-host
