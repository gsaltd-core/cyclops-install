GIT_TOKEN=
GIT_BRANCH=sandbox
mkdir cyclops-docker-logging
mkdir cyclops-docker-logging\logstash
mkdir cyclops-docker-logging\logstash\pipeline
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker-logging/$GIT_BRANCH/docker-compose.yml -o cyclops-docker-logging/docker-compose.yml 
curl -H "Authorization: token $GIT_TOKEN" -H 'Accept: application/vnd.github.v3.raw' -L https://raw.githubusercontent.com/gsaltd-core/cyclops-docker-logging/$GIT_BRANCH/logstash/pipeline/logstash.conf -o cyclops-docker-logging/logstash/pipeline/logstash.conf 

