
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/dragomir/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=75
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Aliases

alias v=nvim
alias ls=exa
alias grep=rg

# Environment

export NVIM_DIR=$HOME/.local/share/bob/nvim-bin
export EDITOR=$NVIM_DIR/nvim

# Paths

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$NVIM_DIR

# Prompt

fastfetch

eval "$(starship init zsh)"
