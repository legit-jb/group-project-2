const { Movie } = require('../models');

const movieData = [
  {
    Actors: "Mark Hamill, Harrison Ford, Carrie Fisher, Peter Cushing",
    Awards: "Won 6 Oscars. Another 52 wins & 29 nominations.",
    Director: "George Lucas",
    Genre: "Action, Adventure, Fantasy, Sci-Fi",
    imdbID: "tt0076759",
    imbdRating: "8.6/10",
    MetacriticRating: "90/100",
    Plot: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.",
    Poster:  "https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
    Rated: "PG",
    Released: "25 May 1977",
    RottenTomRating: "92%",
    Runtime: "121 min",
    Title: "Star Wars: Episode IV - A New Hope",
    Type: "movie"
  }, 
  {
    Actors: "Bill Murray, Dan Aykroyd, Sigourney Weaver, Harold Ramis",
    Awards: "Nominated for 2 Oscars. Another 6 wins & 6 nominations.",
    Director: "Ivan Reitman",
    Genre: "Action, Comedy, Fantasy, Sci-Fi",
    imdbID: "tt0087332",
    imbdRating: "7.8/10",
    MetacriticRating: "71/100",
    Plot: "Three former parapsychology professors set up shop as a unique ghost removal service.",
    Poster: "https://m.media-amazon.com/images/M/MV5BMTkxMjYyNzgwMl5BMl5BanBnXkFtZTgwMTE3MjYyMTE@._V1_SX300.jpg",
    Rated: "PG",
    Released: "08 Jun 1984",
    RottenTomRating: "97%",
    Runtime: "105 min",
    Title: "Ghostbusters",
    Type: "movie"
  }
]

const seedMovies = () => Movie.bulkCreate(movieData);

module.exports = seedMovies;