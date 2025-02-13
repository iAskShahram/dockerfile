FROM node:18-alpine

RUN apk add --no-cache \
    docker \
    docker-compose \
    openssl \
    bash \
    postgresql-client

WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./
RUN npm ci --only=production

# Copy all necessary files
COPY . .

# Make scripts executable
RUN chmod +x /app/start.sh /app/lib.sh /app/stop.sh /app/update.sh /app/tunnel.sh

# Create volume mount points
VOLUME ["/var/lib/postgresql/data", "/data"]

# Expose necessary ports
EXPOSE 3030 5432 6379 9020

# Set default command to run the start script
ENTRYPOINT ["/app/start.sh"]
CMD ["full"]