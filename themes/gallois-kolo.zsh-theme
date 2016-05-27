autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}*'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}*'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' %c%u%F{green}[%b]'
    } else {
        zstyle ':vcs_info:*' formats ' %c%u%F{red}*%F{green}[%b]'
    }

    vcs_info
}

setopt prompt_subst
RPS1='%F{green}${vcs_info_msg_0_}%F{white} %{$reset_color%}%'
PROMPT='%{$fg[cyan]%}[%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd

