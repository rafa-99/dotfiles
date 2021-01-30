# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=0
setopt prompt_subst autocd
# End of lines configured by zsh-newuser-install
# Autoload Extensions
## Autocompletion Menu
autoload -Uz compinit promptinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
promptinit
_comp_options+=(globdots)		# Include hidden files.

## Vi mode
bindkey -v
export KEYTIMEOUT=1

### Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

### Edit command with $EDITOR
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

## Source Files
source "$HOME"/.config/zsh/prompt/nicoulaj.zsh-theme
source "$HOME"/.config/zsh/zsh-syntax-highlighting.zsh
[ -f "$HOME/.config/misc/aliasrc" ] && source "$HOME/.config/misc/aliasrc"
