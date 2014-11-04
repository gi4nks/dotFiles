# SwissPost zsh aliases and functions
# Usage is also described at https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

# Working folder aliases - https://wiki.archlinux.org/index.php/Pacman_Tips
alias projects='cd /Users/gianluca/Projects'

alias java8='set_java_home_8'
alias java7='set_java_home_7'
alias java6='set_java_home_6'

alias extract=extract

function set_java_home_7 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
}

function set_java_home_8 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}

function set_java_home_6 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
}

function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar xjf $1        ;;
            *.tar.gz)         tar xzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjf $1        ;;
            *.tgz)            tar xzf $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
