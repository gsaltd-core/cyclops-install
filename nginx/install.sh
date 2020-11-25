curl -H 'Authorization: token <INSERT TOKEN>' -H 'Accept: application/vnd.github.v3.raw' -L https://github.com/gsaltd-core/cyclops-docker/archive/main.zip -o cyclops-docker.zip 
unzip -o cyclops-docker 
mv cyclops-docker-main cyclops-docker 
rm cyclops-docker.zip 
