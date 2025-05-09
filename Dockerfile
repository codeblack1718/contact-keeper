# Use Node LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Expose port (change if different in your app)
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]
