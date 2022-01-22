FROM jenkins/jenkins

# user
USER root

RUN apt update
# add to repository sources list
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
# install nodejs
RUN apt -y install nodejs
# install Node Development tools
RUN apt -y install gcc g++ make
# install nestjs CLI
RUN npm i -g @nestjs/cli