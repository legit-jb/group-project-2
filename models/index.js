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

List.hasMany(Movie, {
  through: {
    model: Movielist,
    unique: false,
  },
});

Movie.hasMany(List {
    through: {
        model: Movielist,
        unique: false,
      },
})

module.exports = { User, List, Movie, Movielist };
