# Use official Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install server dependencies
RUN npm install

# Install and build frontend
RUN cd client && npm install && npm run build

# Move the React build into server/public
RUN cp -r client/build/* server/public/

# Expose app port
EXPOSE 5000

# Run the app
CMD ["npm", "run", "dev"]
