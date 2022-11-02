XDG_CONFIG_HOME="$HOME/.config"
XDG_CACHE_HOME="$HOME/.cache"
XDG_DATA_HOME="$HOME/.local/share"

ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export EDITOR=nvim
export TERMINAL=kitty
export BAT_THEME=gruvbox-dark

OPTS_BAT='--preview "bat --style=numbers --color=always --line-range :40 {}"'
OPTS_TREE='--preview "tree -C -L 2 {}"'
OPTS_COLOR='
    --border
    --color=dark --color=fg:#d79921,bg:#000000,hl:#fb4936
    --color=fg+:#427b58,bg+:#3c3836,hl+:#fb4936
    --color=info:#458588,prompt:#cc241d,pointer:#b8bb26
    --color=marker:#98971a,spinner:#458588,header:#b16286,border:#427b58
    '

export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS=$OPTS_COLOR$OPTS_BAT

export FZF_CTRL_T_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_OPTS=$OPTS_COLOR$OPTS_BAT

#export FZF_CTRL_R_COMMAND=''
#export FZF_CTRL_R_OPTS=''

export FZF_ALT_C_COMMAND='fd --type d --hidden'
export FZF_ALT_C_OPTS=$OPTS_COLOR$OPTS_TREE
