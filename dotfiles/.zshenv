XDG_CONFIG_HOME="$HOME/.config"
XDG_CACHE_HOME="$HOME/.cache"
XDG_DATA_HOME="$HOME/.local/share"

ZDOTDIR="$XDG_CONFIG_HOME/zsh"
HISTFILE=$ZDOTDIR/.history
HISTSIZE=10000
SAVEHIST=10000

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/scripts
export EDITOR=nvim
export TERMINAL=kitty
export BAT_THEME=gruvbox-dark

OPTS_BAT=' --preview "bat --style=numbers --color=always --line-range :40 {}"'
OPTS_TREE=' --preview "tree -C -L 2 {}"'
OPTS_ALL='
    --border=sharp --preview-window border-sharp --reverse
    --color=dark --color=fg:#a89984,bg:#000000,hl:#83a598:bold
    --color=fg+:#bdae93:bold,bg+:#32302f,hl+:#458588
    --color=info:#98971a,prompt:#d65d0e,pointer:#b16286
    --color=marker:#cc241d,spinner:#b16286,header:#b16286,border:#504945
    '
FZF_DEF=' --prompt=" " --pointer="" --marker="裂"'
FZF_DIR=' --prompt=" " --pointer="" --marker="裂"'
FZF_PAT=' --prompt=" " --pointer="" --marker="裂"'
FZF_HIS=' --prompt=" " --pointer="" --marker="裂"'

export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS=$OPTS_ALL$FZF_DEF

export FZF_CTRL_T_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_OPTS=$OPTS_ALL$FZF_PAT$OPTS_BAT

#export FZF_CTRL_R_COMMAND=''
export FZF_CTRL_R_OPTS=$OPTS_ALL$FZF_HIS

export FZF_ALT_C_COMMAND='fd --type d --hidden'
export FZF_ALT_C_OPTS=$OPTS_ALL$FZF_DIR$OPTS_TREE
