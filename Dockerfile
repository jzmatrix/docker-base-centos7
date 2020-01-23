FROM centos:7.7.1908
################################################################################
RUN yum -y update && \
    yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install openssh-server passwd postfix cronie epel-release yum-utils perl perl-CGI git zip unzip && \
    yum -y update && \
    /bin/rm -f /etc/localtime && \
    /bin/cp /usr/share/zoneinfo/America/New_York /etc/localtime && \
    yum clean all

