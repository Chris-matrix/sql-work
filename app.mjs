import { Sequelize, DataTypes } from 'sequelize';
import dotenv from 'dotenv';

dotenv.config();

// Create Sequelize instance
const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  dialect: 'mysql'
});

// Define models
const Customer = sequelize.define('Customer', {
  customer_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  first_name: DataTypes.STRING,
  last_name: DataTypes.STRING,
  email: DataTypes.STRING,
  address: DataTypes.STRING,
  phone: DataTypes.STRING
});

const Product = sequelize.define('Product', {
  product_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  name: DataTypes.STRING,
  description: DataTypes.TEXT,
  price: DataTypes.DECIMAL(10, 2),
  stock_quantity: DataTypes.INTEGER
});

const Order = sequelize.define('Order', {
  order_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  order_date: DataTypes.DATE,
  total_amount: DataTypes.DECIMAL(10, 2),
  status: DataTypes.STRING
});

const OrderItem = sequelize.define('OrderItem', {
  order_item_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  quantity: DataTypes.INTEGER,
  price: DataTypes.DECIMAL(10, 2)
});

// Define associations
Customer.hasMany(Order);
Order.belongsTo(Customer);

Order.hasMany(OrderItem);
OrderItem.belongsTo(Order);

Product.hasMany(OrderItem);
OrderItem.belongsTo(Product);

// Test connection and sync models
async function testConnection() {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
    
    // Sync all models
    await sequelize.sync({ force: true });
    console.log('All models were synchronized successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
}

testConnection();
