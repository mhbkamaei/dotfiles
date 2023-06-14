XDG_CONFIG_HOME="$HOME/.config"
XDG_CACHE_HOME="$HOME/.cache"
XDG_DATA_HOME="$HOME/.local/share"

ZDOTDIR="$XDG_CONFIG_HOME/zsh"
HISTFILE=$ZDOTDIR/.history
HISTSIZE=10000
SAVEHIST=10000

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/scripts
export PATH=$PATH:/usr/NX/share/applnk/client/xdg
export PATH=$PATH:/usr/NX/share/applnk/server/xdg
export EDITOR=nvim
export TERMINAL=kitty
export BAT_THEME=gruvbox-dark
export MANPAGER="zsh -c 'col -bx | bat -l man -p'"

OPTS_MENU='--border=none --header-first --padding=1 '
OPTS_BAT='--preview "bat --style=numbers --color=always --line-range :40 {}" '
OPTS_TREE='--preview-window=down --preview "exa -a --icons --group-directories-first {}" '

OPTS_ALL='
--header-first --border=sharp --preview-window border-sharp --reverse
--color=dark --color=fg:#a89984,bg:#000000,hl:#83a598:bold
--color=fg+:#d65d0e:bold,bg+:#32302f,hl+:#458588
--color=info:#98971a,prompt:#d65d0e,pointer:#b16286
--color=marker:#cc241d,spinner:#b16286,header:#b16286,border:#504945
'

FZF_DIR='--prompt=" " --pointer="" --marker="裂" --header="Directories" '
FZF_FIL='--prompt=" " --pointer="" --marker="裂" --header="Files" '
FZF_DEF='--prompt=" " --pointer="" --marker="裂" '
FZF_HIS='--prompt=" " --pointer="" --marker="裂" --header="History" '

export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS=$OPTS_ALL$FZF_DEF

export FZF_CTRL_T_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_OPTS=$OPTS_ALL$FZF_FIL$OPTS_BAT

# export FZF_CTRL_R_COMMAND='' Does not exist.
export FZF_CTRL_R_OPTS=$OPTS_ALL$FZF_HIS

export FZF_ALT_C_COMMAND='fd --type d --hidden'
export FZF_ALT_C_OPTS=$OPTS_ALL$FZF_DIR$OPTS_TREE

export FZF_TMUX_OPTS='-p'
