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
