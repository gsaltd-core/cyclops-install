GIT_TOKEN=
ENV=
GIT_BRANCH=main

mkdir cyclops-docker
mkdir cyclops-docker/conf.d
mkdir cyclops-docker/certs
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/docker-compose.yml -o cyclops-docker/docker-compose.yml 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/nginx.conf -o cyclops-docker/nginx.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-dynamic.conf -o cyclops-docker/conf.d/shared-dynamic.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-static.conf -o cyclops-docker/conf.d/shared-static.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/default.conf -o cyclops-docker/conf.d/default.conf

curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/apollo.conf -o cyclops-docker/conf.d/$ENV-apollo.conf;
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/athena.conf -o cyclops-docker/conf.d/$ENV-athena.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/atlas.conf -o cyclops-docker/conf.d/$ENV-atlas.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/idserver.conf -o cyclops-docker/conf.d/$ENV-idserver.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/docviewer.conf -o cyclops-docker/conf.d/$ENV-docviewer.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/pluto.conf -o cyclops-docker/conf.d/$ENV-pluto.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/jupiter.conf -o cyclops-docker/conf.d/$ENV-jupiter.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/conf.d/restws.conf -o cyclops-docker/conf.d/$ENV-restws.conf; 

curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/certs/testlocal-server.crt -o cyclops-docker/certs/testlocal-server.crt
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/certs/testlocal-server.key -o cyclops-docker/certs/testlocal-server.key
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/$ENV/certs/testlocal-ca.crt -o cyclops-docker/certs/testlocal-ca.crt