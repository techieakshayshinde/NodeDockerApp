# 1. Use the official Node image
FROM node:18

# 2. Set working directory
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy app source code
COPY . .

# 5. Expose the port the app runs on
EXPOSE 5000

# 6. Start the app
CMD ["npm","start"]