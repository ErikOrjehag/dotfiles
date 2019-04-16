set fish_greeting ""
alias vim="nvim"
alias vi="nvim"
alias lsl="/bin/ls -lthr"
alias ls="exa --color always --color-scale"
alias feh="feh --fullscreen"
alias g++17="g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -Wsuggest-attribute=const -fconcepts"
alias w++17="g++ -std=c++17 -pedantic -Wall -Wextra -Weffc++"
alias g++aps="g++ -g -O2 -static -std=gnu++17"
alias impa="g++ -lm -lcrypt -O2 -std=c++11 -pipe -DONLINE_JUDGE"
bash $HOME/.dotfiles/check_git.sh

alias desktop="ssh -X alexander@192.168.1.48 -p 123"
alias router="ssh ubnt@192.168.1.1"

function rar_play 
    unar *.rar
    vlc *.avi
end

function colorgcc
    gccfilter -c g++ -std=c++17 -Wextra -pedantic -Weffc++ -Wall $argv; and ./a.out
    rm ./a.out
end
