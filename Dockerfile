FROM node:12-alpine
# Create app directory
WORKDIR /usr/src/app
# Copy the files into workdir
COPY package*.json ./
# Install all the dependencies
RUN npm install
# Bundle app source
COPY . .
# Expose the port to get access
EXPOSE 3000
# Run the node command
CMD [ "node", "app.js" ]