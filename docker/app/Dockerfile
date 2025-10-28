ARG GO_VERSION
FROM golang:${GO_VERSION}

RUN go install github.com/cespare/reflex@v0.3.1
COPY reflex.conf /

COPY start.sh /

ENTRYPOINT ["reflex", "-c", "/reflex.conf"]