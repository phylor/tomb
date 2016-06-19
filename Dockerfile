FROM debian

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y zsh sudo gnupg cryptsetup pinentry-curses curl build-essential
RUN curl https://files.dyne.org/tomb/tomb-2.2.tar.gz > /tmp/tomb.tar.gz
WORKDIR /tmp
RUN mkdir /tmp/tomb
RUN tar xfz tomb.tar.gz -C /tmp/tomb --strip-components=1
WORKDIR /tmp/tomb
RUN make install
RUN rm -rf /tmp/tomb
RUN mkdir /tomb
WORKDIR /tomb

ENTRYPOINT ["tomb"]
