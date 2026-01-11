FROM nextcloud:apache

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        ghostscript \
        imagemagick \
        procps \
        smbclient \
        supervisor \
    ; \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p \
    /var/log/supervisord \
    /var/run/supervisord

COPY ./smb/supervisord.conf /
COPY ./smb/startup.sh /
RUN chmod +x /startup.sh

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
