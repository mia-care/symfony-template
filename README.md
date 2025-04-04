# Symfony Template

This is a Symfony template designed to help developers quickly set up a Symfony project.

## Getting Started

Follow these steps to use this template for local development:

### Prerequisites
- PHP (version 8.1 or higher)
- Composer
- A web server (e.g., Apache or Nginx)
- A database (e.g., MySQL or PostgreSQL)

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url> my-symfony-project
   cd my-symfony-project
   ```

2. Install dependencies:
   ```bash
   composer install
   ```

3. Set up environment variables:
   - Copy the `.env` file:
     ```bash
     cp .env .env.local
     ```
   - Update `.env.local` with your database credentials and other configurations.

4. Set up the database:
   ```bash
   php bin/console doctrine:database:create
   php bin/console doctrine:migrations:migrate
   ```

5. Start the development server:
   ```bash
   symfony server:start
   ```

6. Access the application in your browser at `http://127.0.0.1:8000`.

### Useful Commands

- Clear the cache:
  ```bash
  php bin/console cache:clear
  ```

- Run tests:
  ```bash
  php bin/phpunit
  ```

- Install assets:
  ```bash
  php bin/console assets:install
  ```

## Contributing

Feel free to submit issues or pull requests to improve this template.

## License

This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for details.
