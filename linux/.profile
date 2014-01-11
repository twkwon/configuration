# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#--------------------------------------------- 
# alias
#--------------------------------------------- 
### User specific aliases and functions
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias l="ls -al"
alias ll="ls -l"
#alias tree="tree -C"
#alias sync="sync &"

alias grep="grep -nr --color"
GREP_OPTIONS="--exclude-dir=\.svn --exclude-dir=\.git --exclude=tags"
export GREP_OPTIONS


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
