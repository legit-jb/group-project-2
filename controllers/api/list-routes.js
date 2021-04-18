const router = require('express').Router();
const { List, Movie, Movielist, } = require('../../models');
const withAuth = require("../../utils/auth");

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

// Post a new list
router.post('/', (req, res) => {
  List.create(req.body)
    .then((list) => {
      if (req.body.movieIds.length) {
        const listMovieIdArr = req.body.movieIds.map((movie_id) => {
          return {
            list_id: list.id,
            movie_id,

          };
        });
        return Movielist.bulkCreate(listMovieIdArr);
      }
      res.status(200).json(list);
    })
    .then((movieListIds) => res.status(200).json(movieListIds))
    .catch((err) => {
      console.log(err);
      res.status(400).json(err);
    });
});

// Update existing list by id
router.put('/:id', (req, res) => {
  // update product data
  List.update(req.body, {
    where: {
      id: req.params.id,
    },
  })
    .then((list) => {
      // find all associated tags from ProductTag
      return Movielist.findAll({ where: { list_id: req.params.id } });
    })
    .then((movieList) => {
      // get list of current tag_ids
      const movielistIds = movieList.map(({ movie_id }) => movie_id);
      // create filtered list of new tag_ids
      const newMovieList = req.body.movieIds
        .filter((movie_id) => !movielistIds.includes(movie_id))
        .map((movie_id) => {
          return {
            list_id: req.params.id,
            movie_id,
          };
        });
      // figure out which ones to remove
      const moviesToRemove = movieList
        .filter(({ movie_id }) => !req.body.movieIds.includes(movie_id))
        .map(({ id }) => id);

      // run both actions
      return Promise.all([
        Movielist.destroy({ where: { id: moviesToRemove } }),
        Movielist.bulkCreate(newMovieList),
      ]);
    })
    .then((updatedMovieList) => res.json(updatedMovieList))
    .catch((err) => {
      // console.log(err);
      res.status(400).json(err);
    });
});

// Delete a list by id
router.delete('/:id', async (req, res) => {
  // delete on tag by its `id` value
  try {
    const listData = await List.destroy({
      where: {
        id: req.params.id,
      },
    });
    if (!listData) {
      res.status(404).json({ message: 'No list with this id!' });
      return;
    }
    res.status(200).json({message: "List deleted"});
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;