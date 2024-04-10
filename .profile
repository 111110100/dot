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

# set PATH so it includes user's private bin directories
AUTOMATICBEEP="EsTn 5eZt bHJ7 RcRZ H71C 7sSp G3za sdKT 5pqw vB25 L3Z2 4oDB"
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
PS1="\n\[\e[30;1m\](\[\e[34;1m\]\u@\[\e[32;1m\]\h\[\e[30;1m\])-(\[\e[31;1m\]\t\[\e[30;1m\])-(\[\[\e[32;1m\]\w\[\e[30;1m\])\[\e[30;1m\]\n(jobs:\[\e[34;1m\]\j\[\e[30;1m\])\`if [ \$? -eq 0 ]; then echo \[\e[32m\] \(^_^\); else echo \[\e[31m\] \(o\.O\) ; fi\`\[\e[0m\] $ "
