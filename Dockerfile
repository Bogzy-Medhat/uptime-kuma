# Use the official Node.js image as a base
FROM node:18

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y git

# Clone the Uptime Kuma repository
RUN git clone https://github.com/Bogzy-Medhat/uptime-kuma.git .

# Install dependencies
RUN npm install

# Expose the application port
EXPOSE 3001

# Start the application
CMD ["npm", "run", "setup"]

