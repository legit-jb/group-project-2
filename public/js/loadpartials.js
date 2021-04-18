const myLists = document.getElementById('my-lists')
const newList = document.getElementById('new-list')
const listBlock = document.getElementById('userlists')
const listForm = document.getElementById('createlist')

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
