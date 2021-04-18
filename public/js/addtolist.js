async function newFormHandler(event) {
    event.preventDefault();

    const movieId = document.querySelector('#movie-id');
    
    // do whatever you want with this, it's basically just boilerplate
    const response = await fetch(`/api/list/:id`, {
      method: 'PUT',
      body: JSON.stringify({
        movieId
      }),
      headers: {
        'Content-Type': 'application/json',
      },
    });

    // not sure where it should redirect once something is added, dashboard for now
    if (response.ok) {
      document.location.replace('/dashboard');
    } else {
      alert('Failed to add movie');
    }
  }
  
  document.querySelector('.add-info').addEventListener('submit', newFormHandler);
    