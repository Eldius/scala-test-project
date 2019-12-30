FROM gitpod/workspace-full

USER root
# Install custom tools, runtime, etc.
RUN sudo apt-get update \
  && sudo apt-get install -y \
    openjdk-8-jdk \
    mc \
    joe && \
  sudo apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


USER gitpod
RUN mkdir -p /home/gitpod/bin && curl -Ls https://git.io/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt && \
  echo PATH=~/bin:\$PATH >> /home/gitpod/.bashrc && \
  rm -rf /tmp/*

USER root
