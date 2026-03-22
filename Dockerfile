# Use a lightweight Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install serve globally
RUN npm install -g serve

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["serve", "-s", ".", "-l", "3000"]