#
#
#

HISTFILE=$ZDOTDIR/.history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

source /usr/share/zsh-antigen/antigen.zsh

export EDITOR=nvim
export TERMINAL=kitty

PATH=$PATH:~/.local/bin/
antigen use oh-my-zsh
antigen bundle git-prompt
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-beginning-search-backward-end history-beginning-search-forward-end)
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

#source ~/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z/z.sh

# Default values for the appearance of the prompt.
ZSH_THEME_GIT_PROMPT_PREFIX="%F{green} %f"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{blue} %f"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{ ↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{ ↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[blue]%}%{⚑%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"

declare -a glyphs=(     )
glyph=${glyphs[ $RANDOM % ${#glyphs[@]} + 1 ]}
PROMPT='%F{cyan}%~%f %F{#d65d0e}$glyph%f $(git_super_status)  '
RPROMPT='%F{yellow}%*%f %F{green}%?%f'
#bindkey -v

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[OA' history-beginning-search-backward-end
bindkey '^[OB' history-beginning-search-forward-end

if [[ "$(xdotool search --class scpad)" == "$(xdotool getactivewindow)" ]]; then
    neofetch
fi

if [[ -f $ZDOTDIR/.aliases ]]; then
    . $ZDOTDIR/.aliases
fi

