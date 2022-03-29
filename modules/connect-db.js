// modules / connect-db.js
const mysql = require("mysql2");

const pool = mysql.createPool({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  waitForConnections: true, //要步要等待連線
  connectionLimit: 5, //最大連線數
  queueLimit: 0, //當超過連線數時要排隊的數量限制
});

//匯出
module.exports = pool.promise();