# ~/.bashrc
#
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
#PS1='[\u@\h \W]\$ '
#
# Bash Colours
#
if [ "$PWD" = ~ ]; then
    export PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\[$(tput setaf 196)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 196)\]\h \[$(tput setaf 7)\]\w\[$(tput setaf 7)\]] \[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
else
    export PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\[$(tput setaf 196)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 196)\]\h \[$(tput setaf 7)\]\$PWD\[$(tput setaf 7)\]] \[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi
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
