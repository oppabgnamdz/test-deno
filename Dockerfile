# Use the official Deno image as the base image
FROM hayd/deno:latest

# Set the working directory
WORKDIR /app

# Copy the application files to the container image
COPY . .

# Install the dependencies
RUN deno cache deps.ts
RUN deno info

# Expose the port that the application listens on
EXPOSE 8000

# Run the application when the container starts
CMD ["run", "--allow-net", "app.ts"]