FROM artifactory.six-group.net/openshift3/jenkins-slave-maven-rhel7

MAINTAINER HAKA6-Pacemakers <HAKA6-Pacemakers@six-group.com>

ENV ARTIFACTORY_URL="https://artifactory.six-group.net/artifactory/torrent-snapshot" \
     TZ="Europe/Zurich"\
     LANG="en_US.UTF-8"

ADD settings.xml ${HOME}/.m2/

