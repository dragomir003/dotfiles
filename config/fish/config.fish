if not status is-interactive
end

set fish_greeting
fish_vi_key_bindings

pfetch

alias v=nvim

alias ls="exa -a"
alias grep=rg
alias cat=bat
alias hx=helix

cd $HOME
starship init fish | source	
