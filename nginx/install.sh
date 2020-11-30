GIT_TOKEN=<INSERT TOKEN>
GIT_BRANCH=main
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/nginx.conf -o cyclops-docker-$GIT_BRANCH/nginx.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-dynamic.conf -o cyclops-docker/$GIT_BRANCH/conf.d/shared-dynamic.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-static.conf -o cyclops-docker/$GIT_BRANCH/conf.d/shared-static.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/apollo.conf -o cyclops-docker/$GIT_BRANCH.conf.d/apollo.conf 

#unzip -o cyclops-docker 
#mv cyclops-docker-main cyclops-docker 
#rm cyclops-docker.zip 
