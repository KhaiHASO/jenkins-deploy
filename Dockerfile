FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y sudo docker.io

# Run Jenkins as root
USER root

# Jenkins home
ENV JENKINS_HOME /var/jenkins_home

# setup wizard off
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

EXPOSE 8080
