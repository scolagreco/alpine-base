FROM scolagreco/docker-alpine:v3.10.2
MAINTAINER Stefano Colagreco <stefano@colagreco.it>

RUN apk add --update --no-cache tzdata \
 && cp /usr/share/zoneinfo/Europe/Rome /etc/localtime \
 && echo "Europe/Rome" > /etc/timezone \
 && apk del tzdata 

# Metadata params
ARG BUILD_DATE
ARG VERSION="v3.10.2"
ARG VCS_URL="https://github.com/scolagreco/alpine-base.git"
ARG VCS_REF

# Metadata
LABEL maintainer="Stefano Colagreco <stefano@colagreco.it>" \
        org.label-schema.name="Alpine base con timezone Europe/Rome" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.version=$VERSION \
        org.label-schema.vcs-url=$VCS_URL \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.description="Docker Image Alpine con timezone Europe/Rome"

CMD ["/bin/ash"]
