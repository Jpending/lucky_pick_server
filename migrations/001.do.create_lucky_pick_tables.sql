CREATE TABLE lucky_pick_users (
  id SERIAL PRIMARY KEY,
  user_name TEXT NOT NULL UNIQUE,
  email TEXT NOT NULL,
  password TEXT NOT NULL,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now(),
  luckynumberone INTEGER ,
  luckynumbertwo INTEGER ,
  luckynumberthree INTEGER,
  luckynumberfour INTEGER,
  luckynumberfive INTEGER,
  luckynumbersix INTEGER,
  luckynumbersevem INTEGER
)
