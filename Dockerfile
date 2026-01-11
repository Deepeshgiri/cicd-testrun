# Use official Node image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package.json first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all code
COPY . .

# Expose port for host
EXPOSE 3000

# Start app
CMD ["npm", "start"]
