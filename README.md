# Hello World with Ruby on Rails

This Rails app responds with "Hello World !" at the root (/).

## Quick Start

### Option 1: Local Development
1. Enter the project directory:
   
   ```bash
   cd hello_world
   ```
2. Install gem dependencies:
   
   ```bash
   bundle install
   ```
3. Start the development server:
   
   ```bash
   bundle exec rails server
   ```
4. Open your browser at http://localhost:3000

If gem installation fails on Windows due to native extensions (e.g., libyaml/psych), use WSL or install MSYS2/DevKit via RubyInstaller and try `bundle install` again.

### Option 2: Docker (Recommended)

#### Prerequisites
- Docker installed on your system
- Docker Compose (usually included with Docker Desktop)

#### Running with Docker

1. **Build and start the application:**
   ```bash
   docker-compose up -d --build
   ```

2. **Access the application:**
   Open your browser at http://localhost:3000

3. **Stop the application:**
   ```bash
   docker-compose down
   ```

#### Alternative Docker Commands

- **Run in detached mode (background):**
  ```bash
  docker-compose up -d --build
  ```

- **View logs:**
  ```bash
  docker-compose logs -f
  ```

- **Rebuild without cache:**
  ```bash
  docker-compose build --no-cache
  ```

- **Run with custom port:**
  ```bash
  docker-compose up --build -p 8080:3000
  ```

### Option 3: Docker Development with Live Reloading

For development with automatic reloading when you make changes to your code:

#### Prerequisites
- Docker installed on your system
- Docker Compose (usually included with Docker Desktop)

#### Development Setup

1. **Start development with live reloading:**
   ```bash
   docker-compose -f docker-compose.dev.yml up --build
   ```

2. **Access the application:**
   Open your browser at http://localhost:3000

3. **Stop development:**
   ```bash
   docker-compose -f docker-compose.dev.yml down
   ```

#### Development Commands

- **Run development in detached mode (background):**
  ```bash
  docker-compose -f docker-compose.dev.yml up -d --build
  ```

- **View development logs:**
  ```bash
  docker-compose -f docker-compose.dev.yml logs -f
  ```

- **Rebuild development container (after Gemfile changes):**
  ```bash
  docker-compose -f docker-compose.dev.yml build
  ```

- **Rebuild without cache:**
  ```bash
  docker-compose -f docker-compose.dev.yml build --no-cache
  ```

#### Development Features

The development setup includes:
- **Live Reloading**: Changes to your Ruby files automatically restart the Rails server
- **Volume Mounting**: Your local files are synced with the container for immediate changes
- **Development Environment**: Better error messages and debugging capabilities
- **Web Console**: Access Rails console in the browser for debugging

#### Docker Image Details

The application is containerized using:
- **Base Image:** Ruby 3.2 Alpine (lightweight)
- **Web Server:** Puma
- **Port:** 3000
- **Environment:** Production-ready configuration

The Docker setup includes:
- Multi-stage build for optimization
- Health checks for container monitoring
- Volume mounting for logs
- Automatic restart policy
