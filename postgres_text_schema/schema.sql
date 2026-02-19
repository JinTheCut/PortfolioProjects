
BEGIN;
CREATE TABLE IF NOT EXISTS authors (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS works (
  id SERIAL PRIMARY KEY,
  author_id INT NOT NULL REFERENCES authors(id),
  title TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS lines (
  id SERIAL PRIMARY KEY,
  work_id INT NOT NULL REFERENCES works(id),
  n INT NOT NULL,
  text TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tokens (
  id SERIAL PRIMARY KEY,
  line_id INT NOT NULL REFERENCES lines(id),
  position INT NOT NULL,
  token TEXT NOT NULL
);

-- Example index for token search
CREATE INDEX IF NOT EXISTS idx_tokens_token ON tokens(token);
COMMIT;
