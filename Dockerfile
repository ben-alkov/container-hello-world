FROM fedora:latest

LABEL "com.redhat.component"="container-hello-world" \
      "name"="ben-alkov/container-hello-world" \
      "version"="1.0.simple.cachito.test"

RUN dnf install -y golang
COPY $REMOTE_SOURCE $REMOTE_SOURCE_DIR
WORKDIR $REMOTE_SOURCE_DIR/app
RUN go build -o retrodep
