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

# peco-src
# (http://blog.kentarok.org/entry/2014/06/03/135300)
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^S' peco-src

# peco-snippets
# (http://blog.glidenote.com/blog/2014/06/26/snippets-peco-percol/)
function peco-snippets() {
    BUFFER=$(grep -v "^#" ~/.snippets | peco --query "$LBUFFER")
    zle clear-screen
}

zle -N peco-snippets
bindkey '^x^s' peco-snippets
