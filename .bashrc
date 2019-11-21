# this file is processed on each interactive invocation of bash

# avoid problems with scp -- don't process the rest of the file if non-interactive
[[ $- != *i* ]] && return

#PS1="`shorthostname` \! $ "
PS1="\[\e[32;1m\]\u@\h:\[\e[34;1m\]\w\[\e[0m\]\\$ "
HISTSIZE=50

alias mail=mailx

export TERM=xterm-256color

#export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
#export JAVA_TOOL_OPTIONS="-Xmx2048m"
#export PATH=$JAVA_HOME/bin:/homes/an93/CS560/sketch-1.7.5/sketch-frontend:$HOME/bin:/usr/local/bin:$PATH

# enable color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors -b)"
    alias ls="ls --color=auto"
    alias dir="dir --color=auto"
    alias vdir="vdir --color=auto"

    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/homes/shi442/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/homes/shi442/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/homes/shi442/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/homes/shi442/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<


# maven
export MAVEN_HOME="/homes/shi442/apache-maven-3.6.2"
export PATH=$MAVEN_HOME/bin:$PATH

# cuda
export PATH=/opt/cuda10/bin${PATH:+:${PATH}}$
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/cuda10/lib64/

exec zsh
