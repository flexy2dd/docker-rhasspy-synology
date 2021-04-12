FROM rhasspy/rhasspy:2.5.10
LABEL maintainer="Richard Pochot <blackdev@pochot.com>"

ENV LANG C.UTF-8

ENV RHASSPY_PROFILE=en \
    RHASSPY_DEVICE=

COPY run.sh /

ENTRYPOINT ["/run.sh"]
