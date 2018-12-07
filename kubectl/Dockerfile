FROM alpine:3.8

LABEL "com.github.actions.name"="Kubectl"
LABEL "com.github.actions.description"="Run kubectl"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/x11/actions"
LABEL "homepage"="http://github.com/x11/actions/kubectl"
LABEL "maintainer"="Terence <terence@tkeur.nl>"

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl

COPY entrypoint.sh /entrypoint.sh

RUN set -x && \
    chmod +x /entrypoint.sh && \
    apk add --no-cache curl ca-certificates && \
    chmod +x /usr/local/bin/kubectl && \
    kubectl version --client

ENTRYPOINT ["/entrypoint.sh"]
