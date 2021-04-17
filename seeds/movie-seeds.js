const { Movie } = require('../models');

const movieData = [
  {
    Actors: "Harrison Ford",
    Awards: "All of them",
    Director: "Me",
    Genre: "Awesome",
    imdbID: "tt0076759",
    imbdRating: "The Best",
    MetacriticRating: "Pretty Good",
    Plot: "Three people have a great time",
    Poster: "URL goes here",
    Rated: "PG",
    Released: "1975",
    RottenTomRating: "People love it",
    Runtime: "2 hours",
    Title: "Star Wars",
    Type: "movie"
  }, 
  {
    Actors: "Bill Murray, Dan Aykroyd, Sigourney Weaver, Harold Ramis",
    Awards: "All of them",
    Director: "Me",
    Genre: "Awesome",
    imdbID: "tt0087332",
    imbdRating: "The Best",
    MetacriticRating: "Pretty Good",
    Plot: "Three people have a great time and fight ghosts",
    Poster: "https://m.media-amazon.com/images/M/MV5BMTkxMjYyNzgwMl5BMl5BanBnXkFtZTgwMTE3MjYyMTE@._V1_SX300.jpg",
    Rated: "PG",
    Released: "1975",
    RottenTomRating: "People love it",
    Runtime: "2 hours",
    Title: "Ghostbusters",
    Type: "movie"
  }
]

const seedMovies = () => Movie.bulkCreate(movieData);

module.exports = seedMovies;