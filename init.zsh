if (( $+commands[zoxide] )); then
    $commands[zoxide] init zsh >| ${0:A:h}/zoxide.zsh
    source ${0:A:h}/zoxide.zsh

    # Ctrl+T: launch zoxide interactive selection (zi)
    function _zoxide-interactive-widget() {
        zi
        zle reset-prompt
    }
    zle -N _zoxide-interactive-widget
    bindkey '^T' _zoxide-interactive-widget
fi