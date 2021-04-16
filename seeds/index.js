const seedUsers = require('./user-seeds');
const seedLists = require('./list-seeds');
const seedMovies = require('./movie-seeds');
const seedMovieLists = require('./movie-list-seeds');

const sequelize = require('../config/connection');

const seedAll = async () => {
  await sequelize.sync({ force: true });
  console.log('\n----- DATABASE SYNCED -----\n');
  await seedUsers();
  console.log('\n----- USERS SEEDED -----\n');

  await seedLists();
  console.log('\n----- LISTS SEEDED -----\n');

  await seedMovies();
  console.log('\n----- MOVIES SEEDED -----\n');

  await seedMovieLists();
  console.log('\n----- MOVIELISTS SEEDED -----\n');

  process.exit(0);
};

seedAll();