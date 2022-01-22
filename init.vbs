Sub Main
xsh.Screen.WaitForString("#")
xsh.Screen.Send("echo ""hello world""$PROMPT_COMMAND;")
xsh.Screen.Send("echo ""set show-all-if-ambiguous on"">~/inputrc;echo ""set completion-ignore-case on"">>~/inputrc;echo ""set history-search-backward on"">>~/inputrc;echo ""set history-search-forward on"">>~/inputrc;")
xsh.Screen.Send("INPUTRC=~/inputrc bash;")
xsh.Screen.Send VbCr
xsh.Screen.Send("bind '""\e[5~"": history-search-backward'")
xsh.Screen.Send VbCr
xsh.Screen.Send("bind '""\e[6~"": history-search-forward'")
xsh.Screen.Send VbCr
xsh.Screen.Send("source ~/.bash_profile;clear;")
xsh.Screen.Send VbCr
xsh.Screen.Send("source ~/.bash_profile;clear;")
xsh.Screen.Send VbCr
xsh.Screen.Send("pushd(){ if [[ $1 =~ [0-9]+ ]];then builtin pushd +$1;return;fi;builtin pushd $*;}")
xsh.Screen.Send VbCr
xsh.Screen.Send("source /usr/local/bin/z.sh")
xsh.Screen.Send VbCr
xsh.Screen.Send("[ -f ~/.fzf.bash ] && source ~/.fzf.bash")
xsh.Screen.Send VbCr
xsh.Screen.Send("shopt -s histappend;shopt -s direxpend;export HISTFILE=~/.his;export HISTFILESIZE=100000;export HISTSIZE=100000;export HISTCONTROL=ignoredups:erasedups;export PROMPT_COMMAND=""${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"";PS1='[\u@\h \d \T \W]\\$ ';alias gdb='INPUTRC= gdb';alias vshell='INPUTRC= wwshell';cdf(){ pid=`ps -eo pid,lstart,cmd|fzf --layout=reverse|awk '{print $1}'`&& cd `pwdx $pid |awk '{print $2}'`;};cdp(){ cd `pwdx $1|awk '{print $2}'`;};alias dirs=""dirs -v"";FZF_COMPLETION_TRIGGER='\\';clear; ")
xsh.Screen.Send VbCr

End Sub

