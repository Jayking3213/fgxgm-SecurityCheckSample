# Use a specific Node.js version with a smaller base image for security and performance
FROM node:hydrogen-bookworm-slim

# Set the working directory
WORKDIR /app

# Install a specific version of npm globally and copy package files
COPY package*.json ./

# Install dependencies and npm
RUN npm install -g npm@9.1.3 && npm install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 8080

# Define the command to run the application
CMD [ "node", "index.js" ]
