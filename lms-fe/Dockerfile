# Stage 1: Build the React application
FROM node:20 as build
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to install dependencies
COPY . .
# Install dependencies
RUN npm install
# Build the React app
RUN npm run build
# Stage 2: Serve the React application using Nginx
FROM nginx:latest
# Copy the built React app from the previous stage to the Nginx server
COPY --from=build /app/build /usr/share/nginx/html
# Expose port 80 (default port for Nginx)
EXPOSE 80
# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
