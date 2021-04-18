const router = require('express').Router();
const { List, Movie, Movielist, User } = require('../../models');
const { route } = require('./user-routes');

router.get('/', async (req, res) => {
    try {
      const moviedata = await Movie.findAll({
        include: { model: Movie, through: Movielist}
      });
  
      res.status(200).json(moviedata);
    } catch (err) {
      res.status(500).json(err);
    }
  });
  
  
  // get a single movie by movie id, include associated movie list
  router.get('/:id', async (req, res) => {
    try {
      const moviedata = await Movie.findByPk(req.params.id, {
        include: { model: Movie, through: Movielist}
      });
      if (!moviedata) {
        res.status(404).json({ message: 'No movie found with this id!' });
        return;
      }
  
      res.status(200).json(moviedata);
    } catch (err) {
      res.status(500).json(err);
    }
  });

module.exports = router;