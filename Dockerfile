FROM docker.io/library/ubuntu:24.04

COPY build-container/install-packages /tmp
RUN /tmp/install-packages
COPY build-container/screenrc /root/.screenrc

CMD [ "tail", "-f", "/dev/null" ]
