alias liu='ssh alewi684@remote-und.ida.liu.se'

export PS1="\[\033[38;5;35m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

alias off='sudo shutdown -P 0'

alias chrome='chromium-browser &'

alias batterycheck='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'

alias network='nm-applet'

alias djangoserver=server_function

alias volume=volfunc

alias mic=micfunc

alias minecraft='java -jar Downloads/Minecraft.jar'

alias flux='redshift-gtk &'

alias ls='ls --color=auto --group-directories-first'

alias nv='nvim'


###### Functions ######

volfunc(){
    amixer -D pulse sset Master $1%
}

micfunc(){
    amixer -D pulse sset Capture $1%
}

server_function(){
	python3 manage.py runserver $1
}

pepper_connect(){
    roslaunch pepper_bringup pepper_full.launch nao_ip:=192.168.1.$1 roscore_ip:=192.168.1.$2 network_interface:=wlp2s0
}

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


LS_COLORS=$LS_COLORS:'di=35:' ; export LS_COLORS
source /opt/ros/kinetic/setup.bash
source /home/alexander/catkin_ws/devel/setup.bash
alias fix_src='source /opt/ros/kinetic/setup.bash'
