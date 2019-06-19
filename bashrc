alias liu='ssh erior950@remote-und.ida.liu.se'

export PS1="\[\033[38;5;35m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

alias off='sudo shutdown -P 0'

alias batterycheck='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'

alias volume=volfunc

alias mic=micfunc

alias flux='redshift-gtk &'

alias ls='ls --color=auto --group-directories-first'

###### Functions ######

volfunc(){
    amixer -D pulse sset Master $1%
}

micfunc(){
    amixer -D pulse sset Capture $1%
}

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

LS_COLORS=$LS_COLORS:'di=35:' ; export LS_COLORS
