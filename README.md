Vaadin Spring Boot 
=================

Dockerized Vaadin Spring Boot example
See: https://www.baeldung.com/spring-boot-vaadin

- Clone this repository

  ```
  $ git clone https://github.com/mbicudo/vaadin-spring-boot-docker
  ```

- Add the tgz for Apache Maven and JDK of your choice, and edit Dockerfile accordingly.
The versions that have been tested are:

  ```
   $ ls -1 deps/
   apache-maven-3.6.0-bin.tar.gz
   jdk-8u40-linux-x64.tar.gz
  ```

- Build Docker Image

  ```
  $ cd vaadin-spring-boot-docker
  $ docker build -t vaadin-spring-boot
  ```

- Run Docker Image

  ```
  $docker run -d -p 8080:8080 vaadin-spring-boot
  ```
