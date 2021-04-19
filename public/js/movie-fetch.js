const searchBtn = document.getElementById('search-btn');
const searchResults = document.getElementById('search-results');
const apiKey = "c7fe7839";
const apiKey2 = "4c11a62";

// searchMovie function searches OMDB.com api with the imbd id to get the movie object and returns it
const getMovie = (id) => {

    fetch(`api/movies/${id}`)
        .then(res => res.json())
        .then(json => {
            console.log(json);

            if (json.Title) {
                console.log("This is passed check: " + json.Title);
            } else {
                console.log ("failed check geting from omdb")
                fetch(`https://www.omdbapi.com/?apikey=${apiKey}&i=${id}`)
                    .then(res => res.json())
                    .then(movie => {
                        const { Ratings } = movie;

                        // delete unused properties
                        delete movie.BoxOffice;
                        delete movie.Country;
                        delete movie.DVD;
                        delete movie.Language;
                        delete movie.Metascore;
                        delete movie.Production;
                        delete movie.Response;
                        delete movie.Website;
                        delete movie.Writer;
                        delete movie.Year;
                        delete movie.imdbRating;
                        delete movie.imdbVotes;
                        delete movie.Ratings;
                        // add the ratings back into the object but as separate properties
                        movie.imdbRating = Ratings[0].Value;
                        movie.RottenTomRating = Ratings[1].Value;
                        movie.MetacriticRating = Ratings[2].Value;

                        
                        return movie;

                    })
                    .then (movie => {
                        console.log("this is movie stringified "+JSON.stringify(movie));
                        fetch('api/movies', {
                            method: 'post',
                            body: JSON.stringify(movie),
                            headers: { 'Content-Type': 'application/json'} 
                        }
                        )
                            .then(res => res.json())
                            .then(json => console.log(json));
                    })
            }
        }) // end of else statement
};
// end getMovie function

// searches for movie based on search input and generates a list of results for the user to click
const searchMovie = async (search) => {
    // const searchList = document.getElementById("search-list")
    const response = await fetch(`https://www.omdbapi.com/?apikey=${apiKey}&s=${search}`);
    const { Search } = await response.json();
    
    if (Search) {
    // creates div for list of results
    const listContainer = document.createElement('UL');
    listContainer.id = 'list-container';
    searchResults.appendChild(listContainer);

    // displays results by title. The imdb id is the id for the element
    Search.forEach(flick => {
        const { Title, imdbID } = flick;
        const liEl = document.createElement('li');
        liEl.classList.add('clickable');
        liEl.innerHTML = Title;
        liEl.setAttribute('id', imdbID)
        listContainer.appendChild(liEl);
    });
    // end of search.foreach
} else {
    console.log ("some kind of error")
}
};
// end searchMovie function

movieClickHandler = (event) => {
    event.preventDefault();
    const movieSearch = document.getElementById('movie-search');

    if (movieSearch.value !== "") {
        const movie = movieSearch.value;
        searchMovie(movie);
        movieSearch.value = "";
    }
    // end of if
};
// end of movieClickHandler 

// waits for a click of the search results and sends the imdb id to the getMovie function
if (searchResults !== null) {
    searchResults.addEventListener("click", (event) => {
        if (event.target.classList.contains("clickable")) {
            getMovie(event.target.id);
            const listContainer = document.getElementById('list-container');
            listContainer.remove();
        }

    });
}
// end of searchResults listener

if (searchBtn !== null) {
    searchBtn.addEventListener('click', (movieClickHandler));
}
// end of searchBtn listener