#
# ~/.bashrc
#
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
#PS1='[\u@\h \W]\$ '
#
# Bash Colours
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 141)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#
# LS Colours
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS
#
# Infinite History
HISTSIZE= HISTFILESIZE=
#
# Vi mode & Vim
set -o vi
export EDITOR='vim'
export VISUAL='vim'
#
# Alias
alias br0_up='sudo ip link set eth0 down &&sudo rc-service net.br0 restart && sudo ip link set dev eth0 up && sudo ip link set eth0 master br0'
alias br0_down='sudo ip link set eth0 nomaster && sudo rc-service net.br0 stop && sudo ip link set dev eth0 up'
alias bench_cpu='sysbench --num-threads=12 --test=cpu --time=60 run'
alias bench_memory='sysbench --test=memory --time=60 run'
alias ls='ls -alps --color=auto'
alias shutdown='loginctl poweroff'
alias keymap='setxkbmap -layout'
alias ps='ps -aux'
alias df='df -h'
alias du='du -hs'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias untar='tar –xvzf'
alias upacman='sudo pacman -Syy && sudo pacman -Syu'
alias handbrake='ghb'
alias untp='sudo ntpdate -b -u 0.gentoo.pool.ntp.org && sudo hwclock --systohc'
alias discord='LIBVA_DRIVER_NAME=nvidia discord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy'
alias vultr='ssh -i /home/hugo/.ssh/Madrid_VultrWebserver -p 27623 webserver@208.85.20.8'
alias debian_local='ssh -i /home/hugo/.ssh/HomeLan -p 27623 server@10.16.28.74'
alias berry='ssh -i /home/hugo/.ssh/BerryServer -p 27623 berry@10.16.28.100'
