const router = require("express").Router();
const { Movie, List, Movielist, User } = require("../models");
const withAuth = require("../utils/auth");

router.get("/", function (req, res) {
  if (req.session.logged_in) {
    res.redirect("/dashboard");
    return;
  }
  res.render("landingpage");
});

router.get("/signup", function (req, res) {
  res.render("signup");
});

router.get("/profile", withAuth, async (req, res) => {
  try {
    const userData = await User.findByPk(req.session.user_id, {
      attributes: { exclude: ["password"] },
      include: [{ model: List, through: Movielist }],
    });

    const user = userData.get({ plain: true });

    res.render("profile", {
      ...user,
      logged_in: true,
    });
  } catch (err) {
    res.status(500).json(err);
  }
});

// gets user data and connects it to the handlebars homepage
router.get("/dashboard", withAuth, async (req, res) => {
  try {
    // Find the logged in user based on the session ID
    const userData = await User.findByPk(req.session.user_id, {
      model: Movielist,
      include: [{ model: User }, { model: List }],
    });

    const user = userData.get({ plain: true });

    res.render("dashboard", {
      ...user,
      logged_in: true,
    });
  } catch (err) {
    res.status(500).json(err);
  }
});

// If user is logged in redirects to homepage, otherwise renders login page
router.get("/login", (req, res) => {
  // If a session exists, redirect the request to the homepage
  if (req.session.logged_in) {
    res.redirect("/dashboard");
    return;
  }
  res.render("login");
});

module.exports = router;
