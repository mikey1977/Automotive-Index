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
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;
-- \i ./scripts/car_model_data.sql;

-- SELECT * FROM car_models;


-- Run a query to get a list of all make_title values from the car_models table where the make_code
-- is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)

-- SELECT DISTINCT ON (make_title) make_title FROM car_models WHERE make_code = 'LAM';

-- CREATE INDEX make_code_index ON car_models (make_code);
-- CREATE INDEX make_title_index ON car_models (make_title);
-- CREATE INDEX model_title_index ON car_models (model_title);
-- CREATE INDEX year_index ON car_models (year);
\timing

SELECT DISTINCT ON (make_title) make_title FROM car_models WHERE make_code = 'LAM';



-- Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code
-- is 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)



SELECT DISTINCT ON (model_title) model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';


-- Run a query to list all make_code, model_code, model_title, and year from car_models where the
-- make_code is 'LAM', and note the time somewhere. (should have 1360 rows)
SELECT * FROM car_models WHERE make_code = 'LAM';



-- Run a query to list all fields from all car_models in years between 2010 and 2015, and note the
-- time somewhere (should have 78840 rows)
SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;


-- Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere
-- (should have 13140 rows)
SELECT COUNT(*) FROM car_models WHERE year = 2010;

\timing

CREATE INDEX make_code_index ON car_models (make_code);
CREATE INDEX make_title_index ON car_models (make_title);
CREATE INDEX model_code_index ON car_models (model_code);
CREATE INDEX model_title_index ON car_models (model_title);
CREATE INDEX year_index ON car_models (year);

\timing
-- Create a query to get a list of all make_title values from the car_models table where the make_code is
-- 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)
-- CREATE INDEX make_title_index ON car_models (make_title);
SELECT DISTINCT ON (make_title) make_title FROM car_models WHERE make_code = 'LAM';

-- Create a query to list all model_title values where the make_code is 'NISSAN', and the model_code is
-- 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)
-- CREATE INDEX model_title_index ON car_models (model_title);
SELECT DISTINCT ON (model_title) model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

-- Create a query to list all make_code, model_code, model_title, and year from car_models where the
-- make_code is 'LAM', and note the time somewhere. (should have 1360 rows)
-- CREATE INDEX make_code_index ON car_models (make_code);
-- CREATE INDEX model_code_index ON car_models (model_code);
-- CREATE INDEX model_title_index ON car_models (model_title);
-- CREATE INDEX year_index ON car_models (year);
SELECT * FROM car_models WHERE make_code = 'LAM';

-- Create a query to list all fields from all car_models in years between 2010 and 2015, and note the
-- time somewhere (should have 78840 rows)
-- CREATE INDEX make_code_index ON car_models (make_code);
-- CREATE INDEX make_title_index ON car_models (make_title);
-- CREATE INDEX model_code_index ON car_models (model_code);
-- CREATE INDEX model_title_index ON car_models (model_title);
-- CREATE INDEX year_index ON car_models (year);
SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- Create a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)

SELECT * FROM car_models WHERE year = 2010;

\timing


-- Add your recorded indexing statements to the scripts/car_models.
-- Done

-- Delete the car_models table
-- Done at beginning

-- Run the provided scripts/car_models.sql script on the indexed_cars database
-- Done at beginning

-- Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times
-- Done at beginning