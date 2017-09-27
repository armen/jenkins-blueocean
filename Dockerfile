FROM openshift/jenkins-2-centos7:latest

USER root
RUN yum -y install \
        curl \
        make \
    && yum -y clean all
USER 1001

COPY plugins.txt /opt/openshift/configuration/plugins.txt
RUN /usr/local/bin/install-plugins.sh /opt/openshift/configuration/plugins.txt
