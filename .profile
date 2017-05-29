# GIT
## https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
test -f ~/.git-completion.bash && . $_

# GOLANG
export GOPATH=$HOME/gostuff
export PATH="$GOPATH/bin:$PATH"

# Docker
drin() { docker rmi -f $(docker images --filter "dangling=true" -q); }
drsc() { docker rm $(docker ps -a -f status=exited -q); }
