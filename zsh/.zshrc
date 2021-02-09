# shared aliases
source $HOME/.aliases.sh

# set correct TERM variable
# export TERM=screen-256color-bce

# solarized dirs
# # # source ~/.zsh/zsh-dircolors-solarized/zsh-dircolors-solarized.zsh

# PS1
PROMPT='%F{white} %2~ %(!.#.>) '

# git integration
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# autocomplete integration
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

