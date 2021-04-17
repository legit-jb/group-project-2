const { Movielist } = require('../models');

const movieListData = [
  {
    list_id: 1,
    movie_id: 1
  },
  {
      list_id: 1,
      movie_id: 2
  }
]
  

const seedMovieLists = () => Movielist.bulkCreate(movieListData);

module.exports = seedMovieLists;