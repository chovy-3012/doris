FROM centos:7
ADD jdk-8u261-linux-x64.tar.gz /opt
ENV JAVA_HOME /opt/jdk1.8.0_261
ENV PATH $PATH:$JAVA_HOME/bin

ADD entrypoint.sh /
ADD doris.tar.gz /
ENTRYPOINT ["/bin/bash","/entrypoint.sh"]
