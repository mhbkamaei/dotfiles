XDG_CONFIG_HOME="$HOME/.config"
XDG_CACHE_HOME="$HOME/.cache"
XDG_DATA_HOME="$HOME/.local/share"

ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export EDITOR=nvim
export TERMINAL=kitty
export BAT_THEME=gruvbox-dark

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=dark
    --color=fg:#d79921,bg:#000000,hl:#fb4936
    --color=fg+:#427b58,bg+:#3c3836,hl+:#fb4936
    --color=info:#458588,prompt:#cc241d,pointer:#b8bb26
    --color=marker:#98971a,spinner:#458588,header:#b16286,border:#427b58'
