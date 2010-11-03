source /etc/bash.bashrc
# source /home/mpkpawan07/.bashrc
# my bashrc file
# Get the aliases and functions

# User specific environment and startup programs
PATH=$PATH:~/bin:/scratch/mendeleydesktop-0.9.7-linux-x86_64/bin
BLUESPEC_HOME=/tools/lin32/Bluespec-2008.11.C
PATH=$PATH:$BLUESPEC_HOME/bin:$HOME/bin
BLUESPECDIR=$BLUESPEC_HOME/lib

LM_LICENSE_FILE=27000@license2:27000@admin:1717@license1:1717@license2
# export LM_LICENSE_FILE=1717@vayu
export BLUESPECDIR
export BLUESPEC_HOME
export PATH
export http_proxy=http://localhost:1989
# unset USERNAME

PATH=$PATH:$MGC_HOME/bin
export MGC_HOME=/tools/lin32/mentor_graphics/formalpro/Mgc_home
export FORMALPRO_INI=/home/hrishikesh/formal_dump/formalpro_ini/
export FORMALPRO_FLOW=/home/hrishikesh/formal_dump/formalpro_flow/
export LD_LIBRARY_PATH=/scratch/ns-allinone-2.28/otcl-1.13:/scratch/ns-allinone-2.28/lib
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH;
export TCL_LIBRARY=/scratch/ns-allinone-2.28/tcl8.4.18/library
export PATH=$PATH:/scratch/ns-allinone-2.28/bin:/scratch/ns-allinone-2.28/tcl8.4.18/unix:/scratch/ns-allinone-2.28/tk8.4.18/unix:/usr/local/cuda/bin;
export NS=/scratch/ns-allinone-2.28/ns-2.34;
export NSVER=2.28

#the -q option is to supress error messages. eg: no permissions to access a particular file.
alias locate='locate -q'

alias gcc='gcc -g'
alias g++='g++ -g'
alias chrome='google-chrome --proxy-server=proxy.iitm.ac.in:3128'

alias madhu='ssh madhuvanti'
alias dcf='ssh mpkpawan@10.6.15.112'
alias printer='ssh prnt@192.168.1.136'
alias gf='fg'
alias refresh='source ~/.bashrc'
alias own='sudo chown -R mpkpawan07'

# directory jumps
alias dcd='cd /scratch/DCDownloads/'
alias proj='cd /project/mpkpawan07/'
alias scratch='cd /scratch'
alias pdfv='cd /scratch/PDFV_Portable/'
alias sim='cd ~/NoC/Simulators/booksim_centralised/'
alias oldsim='cd ~/NoC/Simulators/fastsim_04022010/'
alias textbooks='cd ~/Documents/textbooks'
alias spoj='cd ~/Documents/coding/spoj/'
#alias mendeley='cd /scratch/mendeleydesktop-0.9.7-linux-x86_64/bin/; ./mendeleydesktop &'

# RCs
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias stumpwmrc='vim ~/.stumpwmrc'
alias keys='vim ~/.fluxbox/keys'
alias screenrc='vim ~/.screenrc'

alias p='pushd'
alias pd='popd'
alias q='exit'
alias a='./a.out'
alias ~='cd'
alias su='su -'
alias quit='exit'
alias cpu='cat /proc/cpuinfo'
alias IP='/sbin/ifconfig'
alias ls='ls -F --color=auto --group-directories-first'
alias checkout="svn co svn+ssh://svn.rise.cse.iitm/project/igcar"
alias m='clear && make'
alias mcl='make clean'
alias modelsim="/tools/lin32/mentor_graphics/Modelsim/bin/vsim"
alias b='./booksim examples/mesh88_lat'
alias 3='./3D'
alias ..='cd ..'
alias x=exit
alias ll='ls -ltrh'
alias dir='dir --color=auto --group-directories-first'
alias la='ls -latrh'
alias lsd='ls -l | grep dr'
alias duh='du -ch --max-depth=1'
alias hosts='host -l rise.cse.iitm'

alias c='clear'
alias rt='reset'
alias r='reset'
alias h='history -c'
alias ks='ls'
alias lsb='ls -B'
alias setwall='fbsetbg -f $1'
alias yo='cat ~/.yofile'
alias grep='grep -n'

del ( )
{
	mv $* ~/.trash/
}
# Colors

Black="$(tput setaf 0)"
BlackBG="$(tput setab 0)"
DarkGrey="$(tput bold ; tput setaf 0)"
LightGrey="$(tput setaf 7)"
LightGreyBG="$(tput setab 7)"
White="$(tput bold ; tput setaf 7)"
Red="$(tput setaf 1)"
RedBG="$(tput setab 1)"
LightRed="$(tput bold ; tput setaf 1)"
Green="$(tput setaf 2)"
GreenBG="$(tput setab 2)"
LightGreen="$(tput bold ; tput setaf 2)"
Brown="$(tput setaf 3)"
BrownBG="$(tput setab 3)"
Yellow="$(tput bold ; tput setaf 3)"
Blue="$(tput setaf 4)"
BlueBG="$(tput setab 4)"
LightBlue="$(tput bold ; tput setaf 4)"
Purple="$(tput setaf 5)"
PurpleBG="$(tput setab 5)"
Pink="$(tput bold ; tput setaf 5)"
Cyan="$(tput setaf 6)"
CyanBG="$(tput setab 6)"
LightCyan="$(tput bold ; tput setaf 6)"
NC="$(tput sgr0)" 
# No Color

PS1='\[$LightRed\][\A] \[$Blue\]\h\[$Green\]:{\W}# \[$NC\]'
# \t - current time in 24-hour format
# \h - host name
# \! - command's number in history
# \d - current date

