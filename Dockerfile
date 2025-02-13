FROM ghcr.io/triggerdotdev/trigger.dev:${TRIGGER_IMAGE_TAG:-v3}

COPY start.sh /app/start.sh
COPY . /app
# RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]