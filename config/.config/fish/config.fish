if not status is-interactive
end

set fish_greeting

pfetch

alias v=nvim

cd $HOME
starship init fish | source	
