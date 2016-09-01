CREATE TABLE users (
  id  SERIAL PRIMARY KEY,
  email VARCHAR(128) NOT NULL
);

CREATE TABLE groups (
  id  SERIAL PRIMARY KEY,
  group_name VARCHAR(128) NOT NULL
);

CREATE TABLE user_group_memberships (
  id  SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  group_id INTEGER NOT NULL
);

-- Please write a query to determine, given a particular user's email address, what group ids and names do they belong to?

SELECT groups.group_name, user_group_memberships.group_id FROM users
INNER JOIN groups ON users.id = groups.id
INNER JOIN user_group_memberships ON groups.id = user_group_memberships.id
WHERE users.email = 'given'

Please write an index that would improve the performance of that query. CREATE INDEX index_name ON table_name (column_name, ...)

CREATE INDEX email ON users (email)
