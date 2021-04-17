const router = require("express").Router();
const { Movie, Movielist } = require("../models");

// GET all movies for homepage
router.get("/", async (req, res) => {
  try {
    const dbMoviesData = await Movie.findAll({
      include: [
        {
          model: Movielist,
          attributes: ["movie_id"],
        },
      ],
    });

    const movies = dbMoviesData.map((movies) => movies.get({ plain: true }));
    // Send over the 'loggedIn' session variable to the 'homepage' template
    res.render("homepage", {
      movies,
      loggedIn: req.session.loggedIn,
    });
  } catch (err) {
    console.log(err);
    res.status(500).json(err);
  }
});

// Login route
router.get("/login", (req, res) => {
  // If the user is already logged in, redirect to the homepage
  if (req.session.loggedIn) {
    res.redirect("/");
    return;
  }
  // Otherwise, render the 'login' template
  res.render("login");
});

module.exports = router;
