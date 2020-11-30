GIT_TOKEN=<INSERT TOKEN>
GIT_BRANCH=sandbox
curl -H 'Authorization: token $GIT_TOKEN' -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/nginx.conf -o cyclops-docker/nginx.conf 
#curl -H 'Authorization: token $GIT_TOKEN' -H 'Accept: application/vnd.github.v3.raw' -L https://github.com/gsaltd-core/cyclops-docker/archive/main.zip -o cyclops-docker.zip 
#unzip -o cyclops-docker 
#mv cyclops-docker-main cyclops-docker 
#rm cyclops-docker.zip 
