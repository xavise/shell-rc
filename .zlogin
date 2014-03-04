echo "Processing ~/.zlogin ..."



###############################################################################
# User (_LOGIN_) shell script for zsh
###############################################################################

# Mandatory line for DAC users. Please KEEP this line!
[ -f "$PATH_SRC/DAC.zsh._LOGIN_" ] && source "$PATH_SRC/DAC.zsh._LOGIN_"

### BEGIN User commands ######################################################
# Write here the commands you want to execute in interactive sessions

chpwd()
{
	# Sortim si no es un shell interactiu.
	[[ -t 1 ]] || return

	# Canviem el titol si es un shell en un xterm.
	[[ "$TERM" = "xterm" ]] && print -Pn "\e]2;%m:%~\a"
}

precmd()
{
	# Sortim si no es un shell interactiu.
	[[ -t 1 ]] || return

	# Actualitzem el titol de l'xterm si conve.
	chpwd
}

umask 027
#frm -Sq

#lcac-week.pl
echo

if [ -r ~/.todo ]; then
	echo "--- TODO -----------------------------------------------------------------------"
	cat ~/.todo
	echo "--------------------------------------------------------------------------------"
	echo
fi



# Checkout $PATH_SRC/*.zsh for additional useful commands
# Usage: source $PATH_SRC/command.zsh


