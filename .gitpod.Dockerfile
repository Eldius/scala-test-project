FROM gitpod/workspace-full

USER root

RUN sudo wget https://git.io/sbt -O /usr/bin/sbt && \
  chmod 0755 /usr/bin/sbt && \
  echo PATH=~/bin:/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin:\$PATH >> /home/gitpod/.bashrc

RUN sudo apt-get update \
  && sudo apt-get install -y \
    openjdk-8-jdk \
    mc \
    joe && \
  sudo apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


USER gitpod

USER root
