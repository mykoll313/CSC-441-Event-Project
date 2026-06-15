const mysql = require('mysql2/promise');

// MySQL connection pool
// Update these values if your MySQL username/password are different.
const pool = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'EventProject',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

async function testConnection() {
  const connection = await pool.getConnection();
  try {
    await connection.ping();
    console.log('Connected to MySQL database: EventProject');
  } finally {
    connection.release();
  }
}

module.exports = {
  pool,
  testConnection
};
