# SwissPost zsh aliases and functions
# Usage is also described at https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

alias moveToProject=moveToProject
alias mtp=moveToProject
alias lp=listAvailableProjects

typeset -A availableProjects
availableProjects[streamtune]="/Users/gianluca/Projects/streamtune"
availableProjects[websockets]="/Users/gianluca/Projects/websockets"
availableProjects[aggo]="/Users/gianluca/Projects/aggo"
availableProjects[dotfiles]="/Users/gianluca/Projects/dotFiles"


# labo
availableProjects[labo]="/Users/gianluca/Projects/labo"

function listAvailableProjects() {
  print "List of available projects:"
  for project in "${(k)availableProjects[@]}"; do
    echo "--> $project"
  done
}

function moveToProject() {
  projectDir=${availableProjects[$1]}

  if test -z "$projectDir"; then
    print "$1 is not a valid project. Please run lp commando to see the list of available projects"
  else
    cd $projectDir
  fi
}
