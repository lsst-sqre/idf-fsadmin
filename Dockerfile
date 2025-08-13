FROM python:3.13.6-slim-bookworm
ENV SHELL="/bin/bash"

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:0.7.15 /uv /bin/uv

COPY build-container/screenrc /root/.screenrc
COPY build-container/install-packages /tmp
RUN /tmp/install-packages
RUN rm /tmp/install-packages

USER 0:0
WORKDIR /tmp
CMD [ "tail", "-f", "/dev/null" ]
