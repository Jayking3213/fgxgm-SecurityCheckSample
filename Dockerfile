# Use a specific Node.js version as the base image
FROM node:18.17.1

# Set the working directory
WORKDIR /app

# Install a specific version of npm globally
RUN npm install -g npm@9.1.3

# Copy package.json and package-lock.json to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 8080

# Define the command to run the application
CMD [ "node", "index.js" ]
