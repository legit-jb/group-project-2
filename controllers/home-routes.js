const router = require("express").Router();
const { Movie, List, Movielist } = require('../models');
const Usermovielist = require("../models/usermovielist");
const withAuth = require("../utils/auth");



router.get('/', function (req, res) {
  if (req.session.logged_in) {
    res.redirect('/dashboard');
    return;
  }
  res.render('landingpage')
})

router.get('/signup', function (req, res) {
  res.render('signup')
})



router.get('/profile', withAuth, async (req, res) => {
  try {
    const userData = await User.findAll({
      attributes: { exclude: ['password'] },
      order: [['name', 'ASC']],
    });

    const users = userData.map((project) => project.get({ plain: true }));

    res.render('profile', {
      users,
      // Pass the logged in flag to the template
      logged_in: req.session.logged_in,
    });
  } catch (err) {
    res.status(500).json(err);
  }
});

router.get('/profile', (req, res) => {
  // If a session exists, redirect the request to the profile page
  if (req.session.logged_in) {
    res.redirect('/profile');
    return;
  }

  res.render('login');
});


// gets user data and connects it to the handlebars homepage
router.get('/dashboard', async (req, res) => {
  try {
    // Get all projects and JOIN with user data
    const listData = await List.findAll({
      include: [
        {
          model: Movie, through: Movielist
        },
      ],
    });

    // Serialize data so the template can read it
    const lists = listData.map((list) => list.get({ plain: true }));

    // Pass serialized data and session flag into template
    res.render('dashboard', { 
      lists, 
      logged_in: req.session.logged_in 
    });
  } catch (err) {
    res.status(500).json(err);
  }
});


// If user is logged in redirects to homepage, otherwise renders login page
router.get('/login', (req, res) => {
  // If a session exists, redirect the request to the homepage
  if (req.session.logged_in) {
    res.redirect('/dashboard');
    return;
  }
  res.render('login');
});

module.exports = router;