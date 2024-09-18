FROM ghcr.io/actions/actions-runner:2.319.1

RUN sudo apt-get update
RUN sudo apt-get install -y git bash jq
