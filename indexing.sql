\c mikey;


-- Create a new postgres user named indexed_cars_user
-- CREATE USER "indexed_cars_user";

-- \c indexed_cars_user;
-- Create a new database named indexed_cars owned by indexed_cars_user
DROP DATABASE indexed_cars;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\c indexed_cars;
-- Run the provided scripts/car_models.sql script on the indexed_cars database

\i ./scripts/car_models.sql;

-- SELECT * FROM car_models;

-- Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times
-- there should be 223380 rows in car_models
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;

SELECT * FROM car_models;