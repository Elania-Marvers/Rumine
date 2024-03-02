# Use the official Ruby image as base
FROM ruby:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from the project directory into the container
COPY Gemfile ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 9992 to communicate with the host
EXPOSE 9992

# Command to start the Ruby application
CMD ["ruby", "app.rb"]
