FROM jenkins/jenkins:lts

USER root
RUN apt-get update -y && apt-get install -y docker.io curl sudo

# Cho phép Jenkins dùng Docker socket (nếu cần)
RUN usermod -aG docker jenkins

# Run Jenkins as jenkins user
USER jenkins
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
