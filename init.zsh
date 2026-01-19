if (( $+commands[zoxide] )); then
    $commands[zoxide] init zsh --cmd cd >| ${0:A:h}/zoxide.zsh
    source ${0:A:h}/zoxide.zsh
fi
