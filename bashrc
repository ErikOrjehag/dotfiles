alias liu='ssh alewi684@remote-und.ida.liu.se'

export PS1="\[\033[38;5;35m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

alias off='sudo shutdown -P 0'

alias chrome='chromium-browser &'

alias batterycheck='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'

alias network='nm-applet'

alias djangoserver=server_function

alias volume=volfunc

alias minecraft='java -jar Downloads/Minecraft.jar'

alias flux='redshift-gtk &'

alias ls='ls --color=auto'

###### Functions ######

volfunc(){
    amixer -D pulse sset Master $1%
}

server_function(){
	python3 manage.py runserver $1
}


LS_COLORS=$LS_COLORS:'di=35:' ; export LS_COLORS