const router = require("express").Router();
const Movie = require("../models");
const withAuth = require("../utils/auth");

router.get('/', function (req, res) {
  res.render('homepage')
})

router.get('/login', function (req, res) {
  res.render('login')
});

router.get('/login', (req, res) => {
  // If a session exists, redirect the request to the homepage
  if (req.session.logged_in) {
    res.redirect('/');
    return;
  }
  res.render('login');
});

// create logout



router.get('/profile', function (req, res) {
  res.render('profile')
});

module.exports = router;