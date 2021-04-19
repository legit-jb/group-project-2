let listBlock = document.getElementById('userlists')
let listForm = document.getElementById('createlist')

async function newFormHandler(event) {
    event.preventDefault();
    const list_name = document.querySelector('#new-list-name').value;
    
    
    const response = await fetch(`/api/list`, {
      method: 'POST',
      body: JSON.stringify({
        list_name
      }),
      headers: {
        'Content-Type': 'application/json',
      },
    });
    
    if (response.ok) {
        listForm.style.display = 'none'
        listBlock.style.display = 'block'
    } else {
      alert('Failed to add list');
    }
  }
  
  document.querySelector('.new-list-form').addEventListener('submit', newFormHandler);
    