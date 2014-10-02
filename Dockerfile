FROM base/archlinux:latest
MAINTAINER Nathan Hourt<nathan@bitshares.org>

ENTRYPOINT bitsharesx-cli

WORKDIR /tmp
ADD bootstrap /tmp/
ADD bitsharesx-cli.src.tar.gz /tmp/

RUN ./bootstrap
RUN bitsharesx-cli
