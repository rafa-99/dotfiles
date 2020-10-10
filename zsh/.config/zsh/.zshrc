# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=0
setopt prompt_subst autocd
# End of lines configured by zsh-newuser-install
# Autoload Extensions

## Source Files
source "$HOME"/.config/zsh/agnoster.zsh-theme
source "$HOME"/.config/zsh/zsh-syntax-highlighting.zsh
[ -f "$HOME/.config/misc/aliasrc" ] && source "$HOME/.config/misc/aliasrc"
