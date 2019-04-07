FROM ubuntu:18.04

MAINTAINER gkkachi <github@s.k-kachi.net>

# dependencies
RUN apt-get update && \
    apt-get install -y curl git build-essential pkg-config libssl-dev

# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm@latest

# Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH /root/.cargo/bin:$PATH
RUN rustup update

# wasm-pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# cargo-generate
RUN cargo install cargo-generate


EXPOSE 8080

CMD ["/bin/bash"]
