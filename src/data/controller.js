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

const getActorByID = (req, res) => {
    const actor_id = parseInt(req.params.actor_id);
    pool.query(queries.getActorByID, [actor_id], (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Data!');
}

const addActor = (req, res) => {
    const {actor_id, actor_name, gender, rating} = req.body;
    pool.query(queries.checkActorExists, [actor_id], (error, results) => {
        if (results.rows.length){
            res.send('Actor ID Already Exists!');
        }

        pool.query(queries.addActor, [actor_id, actor_name, gender, rating], (error, results) => {
            if (error){
                throw error;
            }
            res.status(201).send('Actor Added Successfully!');
        });
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

const getPosters = (req, res) => {
    pool.query(queries.getPosters, (error, results) => {
        if (error){
            throw error;
        }
        res.status(200).json(results.rows);
    })
    console.log('Getting Posters!');
}

module.exports = {getActors, getActorByID, addActor, removeActor, updateActor, getGenres, getMovies, getPosters};

