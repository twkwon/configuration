 
#--------------------------------------------- 
# alias
#--------------------------------------------- 
### User specific aliases and functions
alias tree="tree -C"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias l="ls -al"
alias ll="ls -l"
#alias sync="sync &"

alias grep="grep -nr --color"
GREP_OPTIONS="--exclude-dir=\.svn --exclude-dir=\.git --exclude=tags"
export GREP_OPTIONS

### connect to server
alias fuck="~/bin/ssh_c3g3t3"
alias shit="~/bin/ssh_ubuntu"
 

#--------------------------------------------- 
# vcprompt
#--------------------------------------------- 
c_cyan=`tput setaf 6`
c_dark=`tput setaf 0`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_pink=`tput setaf 5`
c_blue=`tput setaf 4`
c_sgr0=`tput sgr0`
 
show_repository ()
{
echo -e "$(VCPROMPT_FORMAT=($(tput setaf 6)%h$(tput sgr0)@$(tput setaf 2)%b$(tput setaf 1)%m$(tput setaf 5)%u$(tput setaf 3)%a$(tput sgr0)) vcprompt)"
#echo -e "$(VCPROMPT_FORMAT=($(tput setaf 3)%s$(tput sgr0):$(tput setaf 6)%h$(tput sgr0)@$(tput setaf 2)%b$(tput setaf 1)%m$(tput setaf 5)%u$(tput sgr0)) vcprompt)"
}

export PS1='\[${c_cyan}\]\u\[${c_sgr0}\]@\[${c_blue}\]mac\[${c_sgr0}\]:\w\[${c_sgr0}\] $(show_repository)\$ '
#export PS1='\[${c_cyan}\]\u\[${c_sgr0}\]@\[${c_blue}\]\h\[${c_sgr0}\]:\w\[${c_sgr0}\] $(show_repository)\$ '
#export PS1='[\u@\w] '


#--------------------------------------------- 
# path
#--------------------------------------------- 
#PATH=/opt/armv7/codesourcery/bin/:$PATH
PATH=$PATH:/Users/alank/bin:/android/android-sdks/sdk/platform-tools
PATH=$PATH:~/pebble-dev/arm-cs-tools/bin

#export LANG="ko_KR.utf8"
#export LANG=C
#export LC_ALL="$LANG"

export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

