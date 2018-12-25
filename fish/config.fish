set fish_greeting ""
alias vim="nvim"
alias vi="nvim"
alias lsl="ls -lthr"
alias feh="feh --fullscreen"
alias g++17="g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -Wsuggest-attribute=const -fconcepts"
alias impa="g++ -lm -lcrypt -O2 -std=c++11 -pipe -DONLINE_JUDGE"
bash $HOME/.dotfiles/check_git.sh

alias desktop="ssh -X alexander@192.168.1.48 -p 123"
alias router="ssh ubnt@192.168.1.1"

function rar_play 
    unar *.rar
    vlc *.avi
end
