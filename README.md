# Hello World (Minimal Rails)

This Rails app responds with "Hello World !" at the root (/).

## Quick Start
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
