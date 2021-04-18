const fetch = require('node-fetch');
const { Movie } = require('../models');
const sequelize = require('../config/connection');

// searchMovie function searches OMDB.com api to get the movie object and returns it
const fetchMovie = async (searchInput) => {
  const apiKey = "c7fe7839";
  const apiKey2 = "4c11a62";
  
  await sequelize.sync({ force: true });


  const res = await fetch(`http://www.omdbapi.com/?apikey=${apiKey}&i=${searchInput}`)
  const movie = await res.json();
  // console.log (movie);
  const { Ratings } = movie;
  // delete unused properties
  delete movie.BoxOffice;
  delete movie.Country;
  delete movie.DVD;
  delete movie.Language;
  delete movie.Metascore;
  delete movie.Production;
  delete movie.Ratings;
  delete movie.Response;
  delete movie.Website;
  delete movie.Writer;
  delete movie.Year;
  delete movie.imdbRating;
  delete movie.imdbVotes;
  // add the ratings back into the object but as separate properties
  movie.imdbRating = Ratings[0].Value;
  movie.RottenTomRating = Ratings[1].Value;
  movie.MetacriticRating = Ratings[2].Value;
  console.log(movie);
  // now add movie to database
  const seedMovies = () => Movie.bulkCreate(movie);
  await seedMovies();

    
}

fetchMovie("tt0068646");

module.exports = fetchMovie;