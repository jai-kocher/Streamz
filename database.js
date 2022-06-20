 const {Client} = require('pg')

 const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "mahaveer2002",
    database: "package"
    }
 )

 client.connect();
 client.query(`SELECT * FROM ACTOR_PICTURE WHERE ACTOR_ID = 18`, (err, res) => {
    if(!err){
        console.log(res.rows);
    }
    else{
        console.log(err.message);
    }
    client.end;
 })
