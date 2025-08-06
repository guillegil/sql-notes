CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT
    uuid_generate_v4();

-- DROP EXTENSION "uuid-ossp";
DROP TABLE IF EXISTS "users";

CREATE TABLE users (
    user_id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    username VARCHAR
);

INSERT INTO
    "users" (username)
VALUES
    ('Guillermo'),
    ('Dixie');

SELECT
    *
FROM
    "users";