FROM releases-docker.jfrog.io/jfrog/artifactory-pro:7.39.4

USER root

ADD "https://github.com/farhadsalehi95/jfrog/archive/refs/heads/main.zip" .

RUN unzip main.zip

RUN mv jfrog-main/* .

RUN unzip artifactory-injector-1.4.1.zip

RUN /opt/jfrog/artifactory/app/third-party/java/bin/java -jar target/artifactory-injector-1.1.jar < answer.txt

RUN chown -R artifactory:artifactory /opt/jfrog/artifactory

USER artifactory
