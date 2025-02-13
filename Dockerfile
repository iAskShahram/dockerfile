FROM alpine:latest

RUN apk update && apk add --no-cache bash openssh

CMD ["/bin/bash"] # or ["/bin/sh"]
