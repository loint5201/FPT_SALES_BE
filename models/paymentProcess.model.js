const { DataTypes } = require("sequelize");

module.exports = (sequelize) => {
  const PaymentProcess = sequelize.define(
    "PaymentProcess",
    {
      PaymentProcessId: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      BookingId: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      PaymentDate: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      Amount: {
        type: DataTypes.DECIMAL(18, 2),
        allowNull: true,
      },
      Description: {
        type: DataTypes.TEXT,
        allowNull: true,
      },
    },
    {
      freezeTableName: true,
      timestamps: false,
    }
  );

  PaymentProcess.belongsTo(sequelize.models.Booking, {
    foreignKey: "BookingId",
  });

  return PaymentProcess;
};
