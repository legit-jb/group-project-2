const { Movie } = require('../models');

const movieData = [
  {
    imdb_id: "tt1099212"
  },
  {
    imdb_id: "tt1259571"
  },
  {
    imdb_id: "tt1324999"
  },
  {
    imdb_id: "tt1673434"
  },
  {
    imdb_id: "tt0095489"
  },
  {
    imdb_id: "tt0090633"
  },
  {
    imdb_id: "tt0104254"
  },
  {
    imdb_id: "tt0108526"
  },
]

const seedMovies = () => Movie.bulkCreate(movieData);

module.exports = seedMovies;