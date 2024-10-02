FROM ghcr.io/actions/actions-runner:2.319.1

RUN sudo apt-get update
RUN sudo apt-get install -y git bash jq busybox curl 
RUN sudo apt-get install -y unzip zip tar gzip
RUN sudo apt-get install -y awscli
RUN sudo apt-get install -y golang wget
RUN wget https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64.tar.gz -O - | sudo tar xz && sudo mv yq_linux_amd64 /usr/bin/yq
RUN yq --version
RUN sudo apt-get install -y python3 python3-pip

RUN sudo apt-get install -y nodejs npm
RUN sudo apt-get install -y docker.io
RUN sudo apt-get install -y gnupg2

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --profile default -y
ENV PATH="/home/runner/.cargo/bin:${PATH}"
RUN cargo --version

RUN sudo apt-get install -y build-essential cmake pkg-config
RUN sudo apt-get install -y ripgrep

RUN sudo apt-get install -y s3cmd
