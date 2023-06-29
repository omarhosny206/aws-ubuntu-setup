# File location: ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT="%{$fg_bold[green]%}➜ %{$fg_bold[cyan]%}%n@%m:%{$fg_bold[yellow]%}%~%{$reset_color%}"

PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT+='%{$fg_bold[white]%}$%{$reset_color%} '
