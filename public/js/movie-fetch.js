const searchBtn = document.getElementById("search-btn");
const apiKey = "c7fe7839";
const apiKey2 = "4c11a62";

// searchMovie function searches OMDB.com api to get the movie object and returns it
const getMovie = async (id) => {
    const response = await fetch(`http://www.omdbapi.com/?apikey=${apiKey}&t=${id}`);
    const movie = await response.json();
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
}

const searchMovie = async (search) => {
    // const searchList = document.getElementById("search-list")
    const response = await fetch(`http://www.omdbapi.com/?apikey=${apiKey}&s=${search}`);
    const {Search} = await response.json();
    console.log (Search);
    Search.forEach(flick => {
        const {Title, imdbID} = flick;
        console.log (Title + imdbID);
    });
    
}

movieClickHandler = (event) => {
    event.preventDefault();
    const movieSearch = document.getElementById("movie-search");

    if (movieSearch.value !== "") {
        const movie = movieSearch.value;
        searchMovie(movie);
        movieSearch.value = "";
    }
    // end of if
}

searchBtn.addEventListener('click', (movieClickHandler));