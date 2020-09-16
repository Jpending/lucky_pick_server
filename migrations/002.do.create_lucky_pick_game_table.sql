CREATE TABLE cashforlife_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL
)

CREATE TABLE megamillions_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL,
  megaball INTEGER NOT NULL
)

CREATE TABLE powerball_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL,
  powerball INTEGER NOT NULL
)

CREATE TABLE quickdraw_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL,
  numbersix INTEGER NOT NULL,
  numberseven INTEGER NOT NULL,
  numbereight INTEGER NOT NULL,
  numbernine INTEGER NOT NULL,
  numberten INTEGER NOT NULL
)

CREATE TABLE picksix_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL,
  numbersix INTEGER NOT NULL,
)

CREATE TABLE jerseycashfive_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL,
  numberfive INTEGER NOT NULL
)

CREATE TABLE pickfour_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
  played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL,
  numberfour INTEGER NOT NULL
)

CREATE TABLE pickthree_numbers(
  id SERIAL PRIMARY KEY,
  date_added TIMESTAMPTZ DEFAULT now() NOT NULL,
  user_id INTEGER
        REFERENCES lucky_pick_users(id) ON DELETE CASCADE NOT NULL,
        played BOOLEAN DEFAULT false NOT NULL,
  numberone INTEGER NOT NULL,
  numbertwo INTEGER NOT NULL,
  numberthree INTEGER NOT NULL
);
