DROP TABLE IF EXISTS "users";

-- It starts at 1 and autoincrements in each use.
CREATE SEQUENCE IF NOT EXISTS user_sequence;

-- DROP SEQUENCE user_sequence;
SELECT
    currval('user_sequence'),
    nextval('user_sequence');

CREATE TABLE "users" (
    user_id INTEGER PRIMARY KEY DEFAULT nextval('user_sequence'),
)