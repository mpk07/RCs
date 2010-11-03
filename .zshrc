# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/scratch/scriptdevil//.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

####################Gems######################
#export PATH=/var/lib/gems/1.8/gems/rubygems-update-1.3.7/bin:$PATH
PATH=$PATH:~/bin:/scratch/mendeleydesktop-0.9.7-linux-x86_64/bin
#export GEM_HOME=/scratch/gems
#export GEM_PATH=/scratch/gems


####################Aliases####################

export PS1="[ %n@%m ]%# "
export RPROMPT="[%U%~%u #%i %S%?%s]"
export EDITOR=vim
export VISUAL=emacs

####################Aliases####################
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
alias x='exit'
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
####################Aliases####################

