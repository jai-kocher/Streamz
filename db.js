const Pool = require('pg').Pool;
const pool = new Pool({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "mahaveer2002",
    database: "package"
});

module.exports = pool;