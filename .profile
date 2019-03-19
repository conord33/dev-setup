# GIT
## https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
test -f ~/.git-completion.bash && . $_

# GOLANG
export GOPATH=$HOME/gostuff
export PATH="$GOPATH/bin:$PATH"

# Docker
dockerclean() {
	docker rmi -f $(docker images --filter "dangling=true" -q) || true;
	docker rm $(docker ps -a -f status=exited -q) || true;
	docker volume rm $(docker volume ls -qf dangling=true) || true;
}

# https://benmccormick.org/2017/03/28/the-mystery-of-docker-and-the-disk-eating-cow/
dockerslaughter() {
	rm ~/Library/Containers/com.docker.docker/Data/vms/0/Docker.qcow2;
}

# NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# NPM
export NPM_TOKEN=$(sed -n 's/.*\authToken=\(.*\)$/\1/p' ~/.npmrc)

# gcloud
export PATH="$HOME/google-cloud-sdk/bin:$PATH"
