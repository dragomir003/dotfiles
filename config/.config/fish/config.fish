if not status is-interactive
end

set fish_greeting

pfetch

alias v=nvim

alias ls="exa -lA"
alias grep=ripgrep
alias cat=bat

cd $HOME
starship init fish | source	
