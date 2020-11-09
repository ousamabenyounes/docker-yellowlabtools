FROM    node:4.5

# last commit=v1.12.0
ENV     VERSION=master
WORKDIR /usr/src/ylt

RUN     npm install -g node-gyp \
        && npm install -g grunt-cli \
        && git clone https://github.com/gmetais/YellowLabTools.git -b ${VERSION} . \
        && npm install \
        && grunt build

EXPOSE  8383 