FROM ghcr.io/actions/actions-runner:2.319.1

RUN sudo apt-get update
RUN sudo apt-get install -y git bash jq busybox curl 
RUN sudo apt-get install -y unzip zip tar gzip
RUN sudo apt-get install -y awscli
RUN sudo apt-get install -y golang snap
RUN snap install yq
RUN sudo apt-get install -y python3 python3-pip

RUN sudo apt-get install -y nodejs npm
RUN sudo apt-get install -y docker.io
RUN sudo apt-get install -y gnupg2

RUN sudo apt-get install -y rustup
RUN rustup update
RUN rustup default stable
RUN cargo --version
