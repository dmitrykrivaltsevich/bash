# Maven-related properties
export MAVEN_HOME=~/apps/apache-maven-3.0.5
export MAVEN_OPTS="-Xms1G -Xmx3G -XX:MaxPermSize=256m"
export M2_REPO=~/.m2
export PATH=$PATH:$MAVEN_HOME/bin

# Java-related properties
export JAVA_HOME=$(/usr/libexec/java_home)

# Scala-related properties
export SCALA_HOME=~/apps/scala-2.11.6
export ACTIVATOR=~/apps/activator-dist-1.3.6
export SBT_OPTS=-XX:MaxPermSize=256M
export PATH=$PATH:$SCALA_HOME/bin:$ACTIVATOR

export PATH=/Users/user/Applications/sbt/bin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export GRADLE_HOME=~/Applications/gradle-1.9

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# path for GNUPg
PATH="/usr/local/gnupg-2.1/bin:${PATH}"
export PATH

# Bash git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Bash git completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Node
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# AWS python params
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ALIASES
alias ll='ls -lah'
alias setjava7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home'
alias setjava8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home'
alias gs='git status'
alias gc='git commit -am'
alias jsonpp='python3 -m json.tool'
alias update-stups='sudo pip3 install --update stups'
alias drmcall='docker rm $(docker ps -a -q)' 	# delete all docker containers
alias drmiall='docker rmi -f $(docker images -q)'	# delete all docker images
alias dfix='eval "$(docker-machine env default)"' # Network timed out while trying to connect to https://index.docker.io
alias dip='docker-machine ip default'
