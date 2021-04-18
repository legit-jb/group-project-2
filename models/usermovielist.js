const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Usermovielist extends Model {}

Usermovielist.init(
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
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'user',
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
      modelName: 'movielist'
    }
  );

  module.exports = Usermovielist;