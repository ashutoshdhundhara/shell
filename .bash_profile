
export NVM_DIR="/Users/Ashutosh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

alias kill_dockers="docker ps -a | grep -o "^[a-z0-9]*" | awk -vORS=' ' '{ print $1 }' | xargs docker rm -f"
alias udecode="python -c 'import sys,urllib;print urllib.unquote(sys.stdin.read().strip())'"
alias uencode="python -c 'import sys,urllib;print urllib.quote(sys.stdin.read().strip())'"
alias prettyj="python –m json.tool"
alias code="open -a Visual\ Studio\ Code"
alias garage="cd /Users/Ashutosh/garage"
alias ll="ls -ahl"
alias rmdstore='find . -name ".DS_Store" -exec rm "{}" ";"'
alias ip="wget http://ipinfo.io/ip  -qO - && echo"
alias ubuntu="ssh ashutoshd@localhost -p 2222"
alias subl='open -a Sublime\ Text'
alias merge="open -a \"Sublime Merge\""

alias ibrew="arch -x86_64 brew"
alias x="arch -x86_64"

export PATH="$PATH":/Users/Ashutosh/garage/tools/flutter/bin:/Users/Ashutosh/garage/tools/kafka/kafka_2.13-3.0.0/bin:/Users/Ashutosh/garage/tools/apache-maven-3.8.2/bin

export LANG=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
