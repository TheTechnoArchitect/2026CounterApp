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

# Expose port (Railway will provide PORT env var)
EXPOSE 3000

# Start the app using PORT from environment (Railway provides PORT)
CMD ["sh", "-c", "serve -s . -l ${PORT:-3000}"]