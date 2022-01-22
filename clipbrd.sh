function pushx() { echo "$*">>~/.clipbrd; }
function sxp() { sed -n "$1p" ~/.clipbrd; }
function showx() { cat -n ~/.clipbrd; }
function popx() { sxp $1;sed -i "$1d" ~/.clipbrd; }
