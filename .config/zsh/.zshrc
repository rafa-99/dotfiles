# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=0
setopt prompt_subst autocd
# End of lines configured by zsh-newuser-install
# Autoload Extensions

## ZSH Syntax Highlighting
# Gentoo
[ -f /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh ] && . /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh

 # Arch
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Source Files
source "$HOME/.config/zsh/agnoster.zsh-theme"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
