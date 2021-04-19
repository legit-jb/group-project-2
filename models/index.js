const User = require("./user");
const List = require("./lists");
const Movie = require("./movie");
const Movielist = require("./movielist");
const Comment = require("./comment");

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
        foreignKey: "list_id"
      },
});

Movie.hasMany(Comment, {
  foreignKey: "movie_id",
  onDelete: "CASCADE",
});

Comment.belongsTo(Movie,{
  foreignKey: "movie_id"
}
  
)

module.exports = { User, List, Movie, Movielist, Comment};