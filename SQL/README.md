# Lab Management Database - SQL Scripts

This folder contains the SQL implementation organized according to the project requirement.

## Folders

- `migrations/` - Creates and changes database tables and constraints.
- `queries/` - SELECT queries used to retrieve and analyze application data.
- `seeds/` - Sample/development data for testing the database.
- `tests/` - SQL checks for relationships, attendance, and evaluation rules.

## Database design

The database models:
Teacher -> Group -> Team -> Student

Teams have lab activities. Lab activities are connected to:
- attendance records
- evaluation records
- team comments

## Suggested execution order

1. Run all files in `migrations/` in numeric order.
2. Run `seeds/sample_data.sql`.
3. Use files in `queries/` for application/report queries.
4. Run files in `tests/` to validate the database.

## Note

These scripts are written in PostgreSQL-style SQL. The application's current Firestore implementation is separate from this SQL project structure; these files are intended for the SQL/database-project requirement.
