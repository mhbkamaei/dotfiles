# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
alias cat='batcat'
alias vi='nvim'
alias ls='exa --icons'
alias ll='exa -alh --icons'
alias myip="curl https://plaintextip.com; echo"
alias stowit="stow -vt ~ ."

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/dotfiles/.p10k.zsh.
[[ ! -f ~/.dotfiles/dotfiles/.p10k.zsh ]] || source ~/.dotfiles/dotfiles/.p10k.zsh
