let myLists = document.getElementById('my-lists')
let newList = document.getElementById('new-list')
let listBlock = document.getElementById('userlists')
let listForm = document.getElementById('createlist')

myLists.addEventListener('click', () => {
  if ((listForm.style.display = 'block')) {
    listForm.style.display = 'none'
  }

  listBlock.style.display = 'block'
})

newList.addEventListener('click', () => {
  if ((listBlock.style.display = 'block')) {
    listBlock.style.display = 'none'
  }

  listForm.style.display = 'block'
})

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