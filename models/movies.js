const { PayloadTooLarge } = require('http-errors');
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Movie extends Model { }

Movie.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    Actors: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Awards: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Director: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Genre: {
      type: DataTypes.STRING,
      allowNull: false
    },
    imdbRating: {
      type: DataTypes.STRING,
      allowNull: true
    },
    MetacriticRating: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Plot: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Poster: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Rated: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Released: {
      type: DataTypes.STRING,
      allowNull:false
    },
    RottenTomRating: {
      type: DataTypes.STRING,
      allowNull: true
    },
    Runtime: {
      type: DataTypes.STRING,
      allowNull:false
    },
    Title: {
      type: DataTypes.STRING,
      allowNull: false
    },
    Type: {
      type: DataTypes.STRING,
      allowNull: false
    },
    imdbId: {
      type: DataTypes.STRING,
      allowNull: false
    },
    haveWatched: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    }
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: 'movie'
  }
);

module.exports = Movie;