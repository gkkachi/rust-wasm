FROM rust:stretch

MAINTAINER gkkachi <github@s.k-kachi.net>


# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm@latest

# wasm-pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# cargo-generate
RUN cargo install cargo-generate


EXPOSE 8080

CMD ["/bin/bash"]
