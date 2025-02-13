FROM alpine:latest

CMD ["/bin/sh", "-c", "while true; do echo 'Container is running...'; sleep 5; done"]