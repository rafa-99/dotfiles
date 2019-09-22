# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=0
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# Autoload Extensions
## Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
## Prompt Themes
autoload -Uz promptinit
promptinit
prompt fade blue
## Source Files
source '/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' \
	'~/.config/aliasrc'
