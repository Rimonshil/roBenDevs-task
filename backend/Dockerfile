# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Create a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g cross-env


# Copy the rest of the application code
COPY . .

# Change ownership to the non-root user
RUN chown -R appuser:appgroup /usr/src/app

# Use non-root user
USER appuser

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]
