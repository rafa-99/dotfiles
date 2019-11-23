# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=0
setopt prompt_subst autocd
# End of lines configured by zsh-newuser-install
# Autoload Extensions
## Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
## Source Files
source '/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source "$HOME/.config/zsh/agnoster.zsh-theme"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
