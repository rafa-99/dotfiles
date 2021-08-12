function git_prompt_info() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT="%(?:%{$fg_bold[green]%}>:%{$fg_bold[red]%}>)"
PROMPT+=' $(pwd) $(git_prompt_info)%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(git:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}) "
