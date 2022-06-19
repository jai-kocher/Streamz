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
 client.query(`SELECT ACTOR_NAME, ACTOR_ID, ROLE FROM ACTOR INNER JOIN MOVIE_CAST ON ACTOR.ACTOR_ID = MOVIE_CAST.ACTOR_ID`, (err, res) => {
    if(!err){
        console.log(res.rows);
    }
    else{
        console.log(err.message);
    }
    client.end;
 })