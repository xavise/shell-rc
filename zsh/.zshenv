# COMPTE AMB LES COMANDES INTERACTIVES!
# FAN PETAR A scp, etc...
[ -t 1 ] && echo "Processing ~/.zshenv ..."



###############################################################################
# User (_STARTUP_) shell script for zsh
###############################################################################

# Mandatory line for DAC users. Please KEEP this line!
# XXX source $PATH_SRC/DAC.zsh._STARTUP_

### BEGIN User commands ######################################################
# Set your local path here
# export PATH=${PATH}:path1:path2:... 

PATH=$HOME/bin:$PATH



# Write here the commands you want to execute when zsh starts
# NOTE: Don't put here interactive commands

HISTSIZE=100
PROMPT="%T %n@%m:%~%# "

# Avoid "linux" term type.
[ "$TERM" = "linux" ] && [ "`uname`" != "Linux" ] && TERM=vt100

# Change global setting which enforces a vt100 TERM in Linux hosts.
#[ "$TERM" = "vt100" ] && [ "`uname`" = "Linux" ] && [ -n "$DISPLAY" ] && TERM=xterm

# Checkout $PATH_SRC/*.zsh for additional useful commands
# Usage: source $PATH_SRC/command.zsh

# Paranoia settings.
[ -n "$LC_HOST" ] && export TMPDIR=$HOME/tmp

