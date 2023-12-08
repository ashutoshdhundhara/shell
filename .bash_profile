parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

alias ll="ls -al"
alias code="open -a \"Visual Studio Code\""
alias merge="open -a \"Sublime Merge\""
