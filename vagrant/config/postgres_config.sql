CREATE DATABASE house_led;
CREATE USER admin WITH PASSWORD 'rqwrwmC8a2UYqsAg';
ALTER ROLE admin SET client_encoding TO 'utf8';
ALTER ROLE admin SET default_transaction_isolation TO 'read committed';
ALTER ROLE admin SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE house_led TO admin;
