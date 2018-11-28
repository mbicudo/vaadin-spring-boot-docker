MyJPetStore
=================

Dockerized Vaadin Springboot example
See: https://www.baeldung.com/spring-boot-vaadin

- Clone this repository

  ```
  $ git clone https://github.com/mbicudo/vaadin-spring-docker
  ```

- Add the tgz for Apache Tomcat and JDK of your choice, and edit Dockerfile accordingly.
The versions that this image has been tested are:

  ```
   $ ls -1 deps/
   apache-maven-3.6.0-bin.tar.gz
   jdk-11.0.1_linux-x64_bin.tar.gz
  ```

- Build Docker Image

  ```
  $ cd vaadin-spring-boot
  $ docker build -t vaadin-spring-boot
  ```

- Run Docker Image

  ```
  $docker run -d -p 8080:8080 vaadin-spring-boot
  ```
