echo "Processing ~/.zshrc ..."



# Opcional, pero recomendado

# setopt CORRECT AUTOMENU CORRECTALL AUTO_CD MAIL_WARNING PUSHD_IGNORE_DUPS AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME NO_BEEP
setopt AUTOMENU AUTO_CD MAIL_WARNING PUSHD_IGNORE_DUPS AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
unsetopt correct
unsetopt correctall

# Aliases.
[ -f "$HOME/rc/aliases" ] && source "$HOME/rc/aliases"

