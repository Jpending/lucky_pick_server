const express = require('express');
const gamesService = require('./games-service');
const { requireAuth } = require('../middleware/jwt-auth');
const gamesRouter = express.Router();
const jsonParser = express.json();

gamesRouter
  .route('/')
  .get((req, res, next) => {
    gamesService.getAllCharacters(req.app.get('db'))
      .then(game => {
        res.json(gamesService.serializeGame(game));
      })
      .catch(next);
  })


gamesRouter.route('/:game/:game_id')
  .all(requireAuth)
  .all(checkGameExists)
  .get((req, res) => {
    gamesService.getById(req.app.get('db'), game, game_id)
      .then(game => {
        res.json(gamesService.serializeGame(game))
      })
  })
  .patch(jsonParser, (req, res, next) => {
    const char_id = req.params.char_id;
    const { name, race, cclass, strength, dexterity, intelligence, health, hit_points, will, perception, fatigue_points, abilities, background_story } = req.body;
    const charToUpdate = { name, race, cclass, strength, dexterity, intelligence, health, hit_points, will, perception, fatigue_points, abilities, background_story };
    const numberOfValues = Object.values(charToUpdate).filter(Boolean).length;
    if (numberOfValues === 0)
      return res.status(400).json({
        error: {
          message: `Update must include body`
        }
      });

    characterService.updateChar(
      req.app.get('db'),
      char_id,
      charToUpdate
    )
      .then(char => {
        res.status(204).json({ message: 'changes submitted' }).end();
      })
      .catch(next);
  })
  .delete((req, res, next) => {
    gamesService.deleteGame(
      req.app.get('db'), req.params.game,
      req.params.game_id
    )
      .then(numRowsAffected => {
        res.status(204);
      })
      .catch(next);
  });

async function checkGameExists(req, res, next) {
  try {
    const game = await gamesService.getById(
      req.app.get('db'),
      req.params.game_id
    )
    if (!game)
      return res.status(404).json({
        message: req.params.game_id,
        error: `Game no exist`
      })
    res.game = game
    next()
  } catch (error) {
    next(error)
  }
};

async function asyncCall() {
  console.log('calling');
  const result = await resolveAfter2Seconds();
  console.log(result);
}

module.exports = gamesRouter
