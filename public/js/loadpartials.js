const myLists = document.getElementById('my-lists')
const newList = document.getElementById('new-list')
const listForm = document.getElementById('createlist')
const listBlock = document.getElementById('userlists')

listForm.style.display = 'none'
listBlock.style.display = 'none'

myLists.addEventListener('click', () => {
  if ((listForm.style.display = 'block')) {
    listForm.style.display = 'none'
  }

  listBlock.style.display = 'inline'
})

newList.addEventListener('click', () => {
  if ((listBlock.style.display = 'inline')) {
    listBlock.style.display = 'none'
  }

  listForm.style.display = 'block'
})

async function newFormHandler(event) {
  event.preventDefault();
  const list_name = document.querySelector('#new-list-name').value;
  
  
  const response = await fetch('/api/lists', {
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
      listBlock.style.display = 'inline'
  } else {
    alert('Failed to add list');
  }
}

document.querySelector('#new-list-form').addEventListener('submit', newFormHandler);