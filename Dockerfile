FROM node:lts-alpine
<<<<<<< HEAD
# Set the working directory to /app inside the container
WORKDIR /app
# Copy app files
COPY . .
# ==== BUILD =====
# Install dependencies
RUN npm install
#RUN npm install serve
# Build the app
RUN npm run build
# ==== RUN =======
# Set the env to "production"
ENV NODE_ENV production
# Expose the port on which the app will be running (3000 is the default that `serve` us
EXPOSE 3000
# Start the app
CMD [ "npx", "serve", "build" ]
=======
WORKDIR /app
COPY package.json .
RUN npm install
RUN npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD ["npx", "serve", "build"]
>>>>>>> 45276543a55a949e3e5c1829c0a985143c5ab56d
