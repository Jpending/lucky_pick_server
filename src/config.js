module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATABASE_URL: process.env.DATABASE_URL || 'postgresql://postgres@localhost/lucky_pick',
  JWT_SECRET: process.env.JWT_SECRET || 'good_luck',
};
