HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
source /usr/share/zsh-antigen/antigen.zsh
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
source ~/.p10k.zsh
export EDITOR=nvim

alias c='clear'
alias vi='nvim'
alias ls='lsd'
alias ll='lsd -alh'
alias myip="curl https://plaintextip.com; echo"
