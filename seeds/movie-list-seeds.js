const { Movielist } = require('../models');

const movieListData = [
  {
    list_id: 1,
    movie_id: 1
  },
  {
      list_id: 1,
      movie_id: 2
  },
  {
    list_id: 1,
    movie_id: 3
},
{
    list_id: 1,
    movie_id: 4
},
{
    list_id: 2,
    movie_id: 5
},
{
    list_id: 2,
    movie_id: 6
},
{
    list_id: 2,
    movie_id: 8
},
  
]
  

const seedMovieLists = () => Movielist.bulkCreate(movieListData);

module.exports = seedMovieLists;