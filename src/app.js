/* eslint-disable no-console */
require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const errorHandler = require('./error-handler');
const { NODE_ENV } = require('./config');
const authRouter = require('./auth/auth-router');
const gamesRouter = require('./games/games-router');
const usersRouter = require('./Users/users-router');

const app = express();

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(errorHandler);
app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());
app.use('/api/auth', authRouter);
app.use('/api/games', gamesRouter);
app.use('/api/Users', usersRouter);


app.get('/', (req, res) => {
  res.send('Prepare to get Lucky!');
});





module.exports = app;
