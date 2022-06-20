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
 client.query(`SELECT * FROM MOVIE_CAST WHERE MOVIE_ID = 
 (SELECT MOVIE_ID FROM MOVIE WHERE MOVIE_NAME = 
    'DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS')`, (err, res) => {
    if(!err){
        console.log(res.rows);
    }
    else{
        console.log(err.message);
    }
    client.end;
 })
