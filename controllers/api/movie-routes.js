const router = require("express").Router();
const { List, Movie, Movielist, User } = require("../../models");
const { route } = require("./user-routes");

// get all movies, include associated lists
router.get("/", async (req, res) => {
  try {
    const movieData = await Movie.findAll({
      include: { model: List, through: Movielist },
    });

    res.status(200).json(movieData);
  } catch (err) {
    res.status(500).json(err);
  }
});

// get a single movie by imdbid, include associated lists
router.get("/:imdbid", async (req, res) => {
  try {
    const movieData = await Movie.findOne({
      where: { imdbID: req.params.imdbid },
      include: { model: List, through: Movielist },
    });
    if (!movieData) {
      res.status(404).json({ message: "No movie found with this id!" });
      return;
    }
    res.status(200).json(movieData);
  } catch (err) {
    res.status(500).json(err);
  }
});

// Post a new movie
router.post("/", async (req, res) => {
  try {
    const newMovie = await Movie.create({
      ...req.body,
    });

    res.status(200).json(newProject);
  } catch (err) {
    res.status(400).json(err);
  }
});

// Delete a movie
router.delete("/:imdbId", async (req, res) => {
  // delete on tag by its `id` value
  try {
    const listData = await Movie.destroy({
      where: {
        imdbID: req.params.imdbId,
      },
    });
    if (!listData) {
      res.status(404).json({ message: "No Movie with this id!" });
      return;
    }
    res.status(200).json({ message: "Movie deleted" });
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
