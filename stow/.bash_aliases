#home office

alias office='$HOME/work/birkscripts/hjemmekontor.sh'

#work

alias insights_cd='cd $HOME/work/insights2way'
alias ic='node $HOME/work/insights2way/insights-cli/index.js'
alias ss='/opt/wildfly/bin/standalone.sh'
alias bst='insights_cd && mvn clean install -DskipTests=true -T 4 && ic server build && ic server deploy && ss'
alias pst='insights_cd && mvn -T 4 clean package -DskipTests=true && ic server deploy && ss'
alias bss='ic server build && ic server deploy && ss'
alias pss='ic server build && ic server deploy && ss'
alias kills='kill -9 $(pgrep -f wildfly)'

#scripts

alias nvim='bob run v0.11.1'
