const fetch = require('node-fetch');
const { Movie } = require('../models');
const sequelize = require('../config/connection');
const searchItem = "";

// searchMovie function searches OMDB.com api to get the movie object and returns it
const fetchMovie = (searchInput) => {
    const apiKey = "c7fe7839";
    const apiKey2 = "4c11a62";

    sequelize.sync();

    fetch(`http://www.omdbapi.com/?apikey=${apiKey}&i=${searchInput}`)
        .then(res => res.json())
        .then(movie => {
            
            console.log(movie);
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
            return movie;
            // now add movie to database
            // sequelize.sync();
            // Movie.create(movie);

        })
        .then(movie => {
            // const sequelize = require('../config/connection');
            // sequelize.sync();
            console.log ("This is movie " +movie.json());
            Movie.create(JSON.stringify(movie));
        })
        // end of then
        .catch(error => console.log("something went wrong!"))

    //   fetch(url, {
    //     method: 'put',
    //     body: JSON.stringify(movie),
    //     headers: { 'Content-Type': 'application/json' },
    //   })
    //     .then(res => res.json())
    //     .then(json => console.log(json));

}

fetchMovie("tt0499549");

module.exports = fetchMovie();