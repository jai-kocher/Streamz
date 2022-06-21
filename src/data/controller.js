const pool = require('../../db.js');
const queries = require('./queries.js');

const getActors = (req, res) => {
    pool.query(queries.getActors, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Actors!');
}

const getMembers = (req, res) => {
    pool.query(queries.getMembers, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Members!');
}

const getActorByID = (req, res) => {
    const actor_id = parseInt(req.params.actor_id);
    pool.query(queries.getActorByID, [actor_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Actor!');
}

const getMemberByUsername = (req, res) => {
    const username = parseInt(req.params.username);
    pool.query(queries.getMemberByUsername, [username], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Member!');
}

const addActor = (req, res) => {
    const {actor_id, actor_name, gender, rating} = req.body;
    pool.query(queries.checkActorExists, [actor_id], (error, results) => {
        if (results.rows.length){
            res.send('Actor ID Already Exists!');
        }
        else{
        pool.query(queries.addActor, [actor_id, actor_name, gender, rating], (error, results) => {
            if (error){
                throw error;
            }
            res.status(201).send('Actor Added Successfully!');
        });
    }
    })
}

const addMember = (req, res) => {
    const {member_id, member_name, phno, email, username, passwd, balance} = req.body;
    pool.query(queries.checkMemberExists, [member_id, username, email], (error, results) => {
        if (results.rows.length){
            res.send('Member ID Already Exists!');
        }
        else{
        pool.query(queries.addMember, [member_id, member_name, phno, email, username, passwd, balance], (error, results) => {
            if (error){
                throw error;
            }
            res.status(201).send('Member Added Successfully!');
        });
    }
    })
}

const removeActor = (req, res) => {
    const actor_id = parseInt(req.params.id);
    pool.query(queries.getActorByID, [actor_id], (error, results) => {
        if (!results.rows.length){
            res.send('Actor Does Not Exist!');
        }
        else{
            pool.query(queries.removeActor, [actor_id], (error, results) => {
                if (error){
                    throw error;
                }
                res.status(200).send('Actor Deleted Successfully!');
            });
        }
    })
}

const updateActor = (req, res) => {
    const actor_id = parseInt(req.params.id);
    const {actor_name} = req.body;
    pool.query(queries.getActorByID, [actor_id], (error, results) => {
        if (!results.rows.length){
            res.send('Actor Does Not Exist!');
        }
        else{
            pool.query(queries.updateActor, [actor_id, actor_name], (error, results) => {
                if (error){
                    throw error;
                }
                res.status(200).send('Actor Details Updated Successfully!');
            });
        }
    })
}

const getGenres = (req, res) => {
    pool.query(queries.getGenres, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Genres!');
}

const getMovies = (req, res) => {
    pool.query(queries.getMovies, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Movies!');
}

const getMovieByID = (req, res) => {
    const movie_id = parseInt(req.params.movie_id);
    pool.query(queries.getMovieByID, [movie_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Movie!');
}

const getPosters = (req, res) => {
    pool.query(queries.getPosters, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Posters!');
}

const getPosterByID = (req, res) => {
    const movie_id = parseInt(req.params.movie_id);
    pool.query(queries.getPosterByID, [movie_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Poster!');
}

const getCast = (req, res) => {
    const movie_id = parseInt(req.params.movie_id);
    pool.query(queries.getCast, [movie_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Cast!');
}

const getCastPicture = (req, res) => {
    const actor_id = parseInt(req.params.movie_id);
    pool.query(queries.getCastPicture, [actor_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Cast Pictures!');
}

const getDirectorPicture = (req, res) => {
    const movie_id = parseInt(req.params.movie_id);
    pool.query(queries.getDirectorPicture, [movie_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Director Picture!');
}

const getDirector = (req, res) => {
    const movie_id = parseInt(req.params.movie_id);
    pool.query(queries.getDirector, [movie_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Director!');
}

const getGenrePosters = (req, res) => {
    const genre_id = parseInt(req.params.genre_id);
    pool.query(queries.getGenrePosters, [genre_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Genre Posters!');
}

const getGenreMovies = (req, res) => {
    const genre_id = parseInt(req.params.genre_id);
    pool.query(queries.getGenreMovies, [genre_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Genre Movies!');
}

module.exports = {
    getActors, 
    getActorByID, 
    addActor, 
    removeActor, 
    updateActor, 
    getGenres, 
    getMovies, 
    getPosters, 
    getPosterByID,
    getCast,
    getCastPicture,
    getGenreMovies,
    getMovieByID,
    getDirectorPicture,
    getDirector,
    getGenres,
    getGenrePosters,
    addMember,
    getMembers,
    getMemberByUsername
};

