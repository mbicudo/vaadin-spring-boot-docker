FROM centos:7

ENV JAVA_HOME=/opt/java
ENV MAVEN_HOME=/opt/maven
ENV APPHOME=/opt/vaadin-spring-boot
ENV PATH $JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum -y update && \
    yum -y install tar && \
    yum clean all

WORKDIR /opt
#ADD deps/jdk-11.0.1_linux-x64_bin.tar.gz .
#RUN ln -s jdk-11.0.1 java
ADD deps/jdk-8u40-linux-x64.tar.gz .
RUN ln -s jdk1.8.0_40 java
ADD deps/apache-maven-3.6.0-bin.tar.gz .
RUN ln -s apache-maven-3.6.0/ maven

EXPOSE 8080

COPY . $APPHOME
WORKDIR $APPHOME
RUN ./mvnw package

CMD ["java", "-jar", "target/vaadin-spring-boot-0.0.1-SNAPSHOT.jar"]

