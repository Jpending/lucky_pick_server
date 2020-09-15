CREATE TABLE IF NOT EXISTS lucky_pick_users (
  id SERIAL PRIMARY KEY,
  user_name TEXT NOT NULL UNIQUE,
  email TEXT NOT NULL,
  password TEXT NOT NULL,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now(),
  luckynumber1 INTEGER,
  luckynumber2 INTEGER,
  luckynumber3 INTEGER,
  luckynumber4 INTEGER,
  luckynumber5 INTEGER,
  luckynumber6 INTEGER,
  luckynumber7 INTEGER
)
