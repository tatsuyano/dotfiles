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

# peco-snippets2
# (http://blog.glidenote.com/blog/2014/06/26/snippets-peco-percol/)
function peco-snippets2() {
    DESCRIPTION=$(grep -v "^#" ~/.snippets | peco --query "$LBUFFER")
    BUFFER=$(echo $DESCRIPTION | awk -F "#" '{print $1}')
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-snippets2
bindkey '^x^s' peco-snippets2

# peco-alias
# (http://qiita.com/astrsk_hori/items/d01f83450b4181c2681b)
function peco-alias(){
  TARGET_ALIAS=$(alias | peco --query "$LBUFFER")
  BUFFER=$(echo "$TARGET_ALIAS"|awk -F '=' '{print $1}')
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-alias
#bindkey '^@^a' peco-alias
bindkey '^x^a' peco-alias

# peco_ggi_list
# (http://handlename.hatenablog.jp/entry/2014/08/19/211643)
function _peco_ggi_list () {
    lang=$(get-git-ignore | peco)

    if [ -n "$lang" ]; then
        get-git-ignore --lang=$lang
    fi
}
alias ggi=_peco_ggi_list