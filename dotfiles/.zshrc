export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export EDITOR=nvim

alias c='clear'
alias vi='nvim'
alias ls='lsd'
alias ll='lsd -alh'
alias myip="curl https://plaintextip.com; echo"
