echo "Processing ~/.zshrc ..."



# Opcional, pero recomendado

# setopt CORRECT AUTOMENU CORRECTALL AUTO_CD MAIL_WARNING PUSHD_IGNORE_DUPS AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME NO_BEEP
setopt AUTOMENU AUTO_CD MAIL_WARNING PUSHD_IGNORE_DUPS AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
unsetopt correct
unsetopt correctall

alias rm='rm -i'
alias cp='cp -ip'
alias mv='mv -i'
alias ls='ls -aF --color=auto'
alias ll='ls -l'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias psu='ps -u $LOGNAME'
alias cvs-lcac='~cvs-lcac/cvs-lcac'
which less >& /dev/null || alias less='more'

alias ss-masi='$HOME/bin/sim-outorder -config $HOME/MASI/SimpleScalar/confsim'

alias cvsstat='cvs -q status | grep Status'
alias cvsmod='cvsstat | grep -v Up-to-date'

alias bzrdiff='bzr diff --using=tkdiff'
alias bzrrb='cd ~/bzr/services.config && bzr rebase; cd -'
alias findpp='cd ~/bzr/services.config/etc; find . -name "*.pp" | xargs grep'

