FROM node:18-alpine # Or a suitable Node.js base image

WORKDIR /app

COPY . .

# Make start.sh executable
RUN chmod +x /app/start.sh

# Option 1: Run start.sh and keep the container running (recommended)
CMD ["/app/start.sh"]

# Option 2: Run a shell alongside start.sh (for debugging)
# CMD ["sh", "-c", "/app/start.sh && tail -f /dev/null"] # tail -f keeps the container running

# Option 3:  Start a shell only (for debugging, not production)
# CMD ["/bin/bash"]