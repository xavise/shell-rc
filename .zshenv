# Avoid printing any messages in non-interactive mode.
# Failure to do so will prevent commands like 'scp' from working properly.
[ -t 1 ] && echo "Processing ~/.zshenv ..."



###############################################################################
# User (_STARTUP_) shell script for zsh
###############################################################################

# Mandatory line for DAC users. Please KEEP this line!
[ -f "$PATH_SRC/DAC.zsh._STARTUP_" ] && source "$PATH_SRC/DAC.zsh._STARTUP_"

### BEGIN User commands ######################################################
# Set your local path here
# export PATH=${PATH}:path1:path2:... 
PATH="~/bin:$PATH"
export PATH MANPATH



# Write here the commands you want to execute when zsh starts
# NOTE: Don't put here interactive commands

HISTSIZE=100
PROMPT="%T %n@%m:%~%# "

# Avoid "linux" term type in non-Linux hosts.
[ "$TERM" = "linux" ] && [ "`uname`" != "Linux" ] && TERM=vt100

# Change global setting which enforces a vt100 TERM in Linux hosts.
#[ "$TERM" = "vt100" ] && [ "`uname`" = "Linux" ] && [ -n "$DISPLAY" ] && TERM=xterm

# LCAC: Checkout $PATH_SRC/*.zsh for additional useful commands
# Usage: source $PATH_SRC/command.zsh

# Private tmp files for security.
[ -d ~/tmp ] && export TMPDIR=~/tmp

