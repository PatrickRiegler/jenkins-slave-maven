FROM artifactory.six-group.net/openshift3/jenkins-slave-maven-rhel7

MAINTAINER HAKA6-Pacemakers <HAKA6-Pacemakers@six-group.com>

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/usr/local/bin/run-jnlp-client"]
ENV ARTIFACTORY_URL="https://artifactory.six-group.net/artifactory/torrent-snapshot" \
     TZ="Europe/Zurich"\
     LANG="en_US.UTF-8"

USER root

RUN yum install -y --setopt=tsflags=nodocs bzip2 && yum clean all

USER 1001

RUN curl --fail --silent --show-error --output /usr/bin/dumb-init https://artifactory.six-group.net/artifactory/generic-release/dumb-init/1.2.0/dumb-init_1.2.0_amd64 \
 && chmod +x /usr/bin/dumb-init


ADD settings.xml ${HOME}/.m2/
