# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/mpkpawan07/.zshrc'

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
# End of lines added by compinstall

####################Gems######################
#export PATH=/var/lib/gems/1.8/gems/rubygems-update-1.3.7/bin:$PATH
PATH=~/bin:$PATH:/scratch/mendeleydesktop-0.9.7-linux-x86_64/bin
#export GEM_HOME=/scratch/gems
#export GEM_PATH=/scratch/gems


####################EXPORTS####################

prompt adam2
export PS1="[ %n@%m ]%# "
#export RPROMPT="[%U%~%u #%i %S%?%s]"
export RPROMPT=""
export EDITOR=vim
export VISUAL=vim

####################Aliases####################
#the -q option is to supress error messages. eg: no permissions to access a particular file.
alias locate='locate -q'

alias gcc='gcc -g'
alias g++='g++ -g'
alias google-chrome='google-chrome --proxy-server=localhost:1989'

alias madhu='ssh madhuvanti'
alias dcf='ssh mpkpawan@10.6.15.112'
alias printer='ssh prnt@192.168.1.136'
alias gf='fg'
alias refresh='source ~/.zshrc'
alias own='sudo chown -R mpkpawan07'
alias CNTLM='sudo /etc/init.d/cntlm start'

# directory jumps
alias dcd='cd /scratch/DCDownloads/'
alias proj='cd /project/mpkpawan07/'
alias scratch='cd /scratch'
alias pdfv='cd /scratch/PDFV_Portable/'
alias sim='cd ~/NoC/Simulators/booksim_centralised/'
alias oldsim='cd ~/NoC/Simulators/fastsim_04022010/'
alias textbooks='cd ~/Documents/textbooks'
alias spoj='cd ~/Documents/coding/spoj/'
alias exps='cd ~/Documents/coding/experiments/'
#alias mendeley='cd /scratch/mendeleydesktop-0.9.7-linux-x86_64/bin/; ./mendeleydesktop &'

# RCs
alias zshrc='vim ~/.zshrc'
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
alias kk='ls -ltrh'
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
alias grep='egrep -n'
####################Aliases####################
#

IP ()
{
	echo "Network Configuration:"
	/sbin/ifconfig | awk '/inet/'
}

export -f IP
