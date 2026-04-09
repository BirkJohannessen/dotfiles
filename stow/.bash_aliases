#home office

alias office='$HOME/work/birkscripts/hjemmekontor.sh'

#work
alias insights_cd='cd $HOME/work/insights2way'
alias ic='node $HOME/work/insights2way/insights-cli/index.js'
alias ss='ic docker dev -s'
# alias bst='insights_cd && mvn clean install -DskipTests=true -T 4 && ic server build && ic server deploy && ss'
# alias pst='insights_cd && mvn -T 4 clean package -DskipTests=true && ic server deploy && ss'
alias pst='ic docker dev -c'
# alias bss='ic server build && ic server deploy && ss'
# alias pss='ic server build && ic server deploy && ss'
alias kills='kill -9 $(pgrep -f wildfly)'

alias wtree='~/personal/scripts/git-worktree-add.sh'
alias jenkins='/home/birkj/work/birkscripts/jenkins-test.sh'
#scripts

alias nvim='bob run v0.11.1'
