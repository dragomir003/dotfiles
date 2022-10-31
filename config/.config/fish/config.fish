if not status is-interactive
end

set fish_greeting

pfetch

alias v=nvim

alias ls="exa -a"
alias grep=rg
alias cat=bat
alias hx=helix

cd $HOME
starship init fish | source	
