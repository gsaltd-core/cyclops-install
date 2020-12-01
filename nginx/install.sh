GIT_TOKEN=
GIT_BRANCH=main
mkdir cyclops-docker
mkdir cyclops-docker/conf.d
mkdir cyclops-docker/certs
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/docker-compose.yml -o cyclops-docker/docker-compose.yml 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/nginx.conf -o cyclops-docker/nginx.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-dynamic.conf -o cyclops-docker/conf.d/shared-dynamic.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/conf.d/shared-static.conf -o cyclops-docker/conf.d/shared-static.conf 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-apollo.testing.gsaltd.com.conf; -o cyclops-docker/conf.d/vet-indev-apollo.testing.gsaltd.com.conf;
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-athena.testing.gsaltd.com.conf;.conf -o cyclops-docker/conf.d/vet-indev-athena.testing.gsaltd.com.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-atlas.testing.gsaltd.com.conf; -o cyclops-docker/conf.d/vet-indev-atlas.testing.gsaltd.com.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-idserver.testing.gsaltd.com.conf; -o cyclops-docker/conf.d/vet-indev-idserver.testing.gsaltd.com.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-docviewer.testing.gsaltd.com.conf; -o cyclops-docker/conf.d/vet-indev-docviewer.testing.gsaltd.com.conf; 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/conf.d/vet-indev-pluto.testing.gsaltd.com.conf; -o cyclops-docker/conf.d/vet-indev-pluto.testing.gsaltd.com.conf; 


curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/certs/vetting-indev-signin_testing_gsaltd_com.crt -o cyclops-docker/certs/vetting-indev-signin_testing_gsaltd_com.crt
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker/$GIT_BRANCH/vet-indev.testing.gsaltd.com/certs/vetting-indev-signin_testing_gsaltd_com.key -o cyclops-docker/certs/vetting-indev-signin_testing_gsaltd_com.key
