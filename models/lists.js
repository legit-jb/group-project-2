const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

// create our Location model
class List extends Model {}

// create fields/columns for Location model
List.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    list_name: {
      type: DataTypes.STRING,
      allowNull: false
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
    modelName: 'list'
  }
);

module.exports = List;