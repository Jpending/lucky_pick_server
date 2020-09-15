/* eslint-disable no-console */
/* eslint-disable quotes */
const Treeize = require('treeize');

const gamesService = {
  getAllGames(db, game) {
    return db
      .from(`'${game}_numbers'`)
      .select('*')
      .leftJoin(
        'lucky_pick_users AS usr',
        `'${game}numbers.user_id'`,
        'usr.id'
      )
      .groupBy(`'${game}numbers.user_id'`, 'usr.id');
  },
  getById(db, game, game_id) {
    return db
      .from(`'${game}_numbers'`)
      .select()
      .where('id', game_id)
      .first();
  },
  updateGame(knex, id, game, newFields) {
    return knex(`'${game}_numbers'`)
      .where({ id })
      .update(newFields);
  },
  insertGame(knex, newGame, game) {
    return knex
      .insert(newGame)
      .into(`'${game}_numbers'`)
      .returning('*')
      .then(rows => {
        return rows[0];
      });
  },
  deleteGame(knex, game, id) {
    return knex(`'${game}_numbers'`)
      .where({ id })
      .delete();
  },
  serializeGames(games) {
    return games.map(this.serializeGames);
  },
  validatefield(field) {
    if (field < 0) {
      return `'${field} must be positive integer'`;
    }
    if (field.length > 2) {
      return `'${field} must be less than 2 characters'`;
    }
    if (field.startsWith(' ') || field.endsWith(' ')) {
      return `'${field} must not start or end with empty spaces'`;
    }
    return null;
  },
  serializeGame(game) {
    const gameTree = new Treeize();
    const gameData = gameTree.grow([game]).getData()[0];
    return {

      id: gameData.id,
      date_created: gameData.date_created,
      user_id: gameData.user_id,
    };
  },

};

const userFields = [
  'usr.id AS user:id',
  'usr.user_name AS user:user_name',
  'usr.email AS user:email',
  'usr.date_created AS user:date_created',

];

module.exports = gamesService;
