# Use official Node image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /usr/src/app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose application port
EXPOSE 81

# Run the application
CMD ["node", "index.js"]
