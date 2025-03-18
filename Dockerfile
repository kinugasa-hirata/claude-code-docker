FROM node:18-bullseye

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    ripgrep \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Install Claude Code
RUN npm install -g @anthropic-ai/claude-code

# Create project directory
RUN mkdir -p /projects

# Set environment variables
ENV NODE_ENV=production
ENV TERM=xterm-256color

# Set working directory to the projects folder
WORKDIR /projects

# Start a bash shell by default
CMD ["bash"]