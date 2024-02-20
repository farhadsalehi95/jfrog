FROM releases-docker.jfrog.io/jfrog/artifactory-pro:7.39.10
USER root
COPY injector.jar /injector.jar
COPY answer.txt /answer.txt
RUN /opt/jfrog/artifactory/app/third-party/java/bin/java -jar /injector.jar < /answer.txt
