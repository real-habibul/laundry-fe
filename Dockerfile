# Stage 1: Build the application
FROM node:14 as build-stage

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build the app
RUN npm run build

# Stage 2: Serve the application using a lightweight web server
FROM nginx:stable-alpine as production-stage

# Copy the built app from the previous stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
