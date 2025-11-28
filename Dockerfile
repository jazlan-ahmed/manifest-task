# Use Node 18 as base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json .

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

