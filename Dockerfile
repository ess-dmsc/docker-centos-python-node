FROM centos

RUN yum -y install yum-utils && \
    yum -y groupinstall development && \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum -y install python36u && \
    yum -y install python36u-pip && \
    yum -y install python36u-devel && \
    yum -y install libpcap-devel && \
    yum -y install cmake3 && \
    yum clean all

RUN pip3.6 install --upgrade pip && \
    rm -rf /root/.cache/pip/*

RUN adduser jenkins

USER jenkins

WORKDIR /home/jenkins
