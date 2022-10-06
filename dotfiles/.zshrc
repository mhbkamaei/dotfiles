# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ "$(xdotool search --class scpad)" == "$(xdotool getactivewindow)" ]]; then
    neofetch
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -f ~/.zsh_aliases ]]; then
    . ~/.zsh_aliases
fi

if [[ -f ~/.p10k.zsh ]]; then
    . ~/.p10k.zsh
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
source /usr/share/zsh-antigen/antigen.zsh
export EDITOR=nvim
PATH=$PATH:~/.local/bin/
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

bindkey -v

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[OA' history-beginning-search-backward-end
bindkey '^[OB' history-beginning-search-forward-end

