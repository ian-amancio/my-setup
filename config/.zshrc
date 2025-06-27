export PS1=' %F{green}%~%f ➜ '

HISTSIZE=1000
SAVEHIST=2000
HISTFILE=~/.zsh_history

setopt autocd
setopt correct
setopt hist_ignore_dups
setopt share_history

## History search

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

## Alias

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -la'
alias ssh='TERM=xterm ssh'

## Functions

docker-stats() {
  sudo docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"
}

export PATH="$HOME/.local/bin:$PATH"
