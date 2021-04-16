const { List } = require('../models');

const listData = [
  {
    list_name: 'My super sweet list',
    user_id: 1
  },
  {
    list_name: 'For Hardcore Peeps Only!',
    user_id: 2
  }

]
  

const seedLists = () => List.bulkCreate(listData);

module.exports = seedLists;