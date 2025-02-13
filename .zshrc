# https://github.com/romkatv/gitstatus
source ~/gitstatus/gitstatus.prompt.zsh

PROMPT='%39F%1~%f ${GITSTATUS_PROMPT:+ $GITSTATUS_PROMPT} %F{%(?.76.196)}%#%f '
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt HIST_EXPIRE_DUPS_FIRST
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


# case sensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# Syntax highlighting
# brew install zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
