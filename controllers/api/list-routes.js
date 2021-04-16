const router = require('express').Router();
const { List, Movie, Movielist, User } = require('../../models');
const { route } = require('./user-routes');
// get all lists, include associated movies
router.get('/', async (req, res) => {
    try {
      const listData = await List.findAll({
        include: { model: Movie, through: Movielist}
      });

      res.status(200).json(listData);
    } catch (err) {
      res.status(500).json(err);
    }
  });

// get a single list by list id, include associated movies
router.get('/:id', async (req, res) => {
  try {
    const listData = await List.findByPk(req.params.id, {
      include: { model: Movie, through: Movielist}
    });
    if (!listData) {
      res.status(404).json({ message: 'No list found with this id!' });
      return;
    }

    res.status(200).json(listData);
  } catch (err) {
    res.status(500).json(err);
  }
});

// get all lists by a single user but user id, include associated movies
router.get('/users/:user_id', async (req, res) => {
  try {
    const listData = await List.findAll({
      where: { user_id: req.params.user_id },
      include: { model: Movie, through: Movielist}
    });

    res.status(200).json(listData);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;