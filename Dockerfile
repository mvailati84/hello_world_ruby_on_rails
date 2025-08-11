# Use the official Ruby image as base
FROM ruby:3.2-alpine

# Install system dependencies including yaml-dev for psych gem
RUN apk add --no-cache \
    build-base \
    tzdata \
    nodejs \
    npm \
    yaml-dev \
    postgresql-dev \
    sqlite-dev

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install Ruby gems
RUN bundle install --jobs 4 --retry 3

# Copy the rest of the application
COPY . .

# Expose port 3000
EXPOSE 3000

# Set environment variables
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
# Add a temporary secret key base for production
ENV SECRET_KEY_BASE=temp_secret_key_base_for_development_only_change_in_production

# Start the application
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]