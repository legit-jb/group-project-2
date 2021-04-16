const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

// create our Location model
class Movielist extends Model {}

// create fields/columns for Location model
Movielist.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    list_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'list',
        key: 'id',
        unique: false
      }
    },
    movie_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'movie',
            key: 'id',
            unique: false
          }
    }
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: 'list'
  }
);

module.exports = Movielist;