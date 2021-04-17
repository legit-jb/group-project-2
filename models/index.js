const User = require("./user");
const List = require("./lists");
const Movie = require("./movies");
const Movielist = require("./movielist");

User.hasMany(List, {
  foreignKey: "user_id",
  onDelete: "CASCADE",
});

List.belongsTo(User, {
  foreignKey: "user_id",
});

List.belongsToMany(Movie, {
  through: {
    model: Movielist,
    foreignKey: "movie_id"
  },
});

Movie.belongsToMany(List, {
  through: {
    model: Movielist,
    unique: false,
    foreignKey: "list_id"
  },

});

module.exports = { User, List, Movie, Movielist };
