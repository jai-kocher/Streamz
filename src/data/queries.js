const getActors = 'SELECT * FROM ACTOR';
const getActorByID = 'SELECT * FROM ACTOR WHERE ACTOR_ID = $1';
const checkActorExists = 'SELECT * FROM ACTOR WHERE ACTOR_ID = $1';
const addActor = `INSERT INTO ACTOR VALUES($1, $2, $3, $4)`
const removeActor = `DELETE FROM ACTOR WHERE ACTOR_ID = $1`;
const updateActor = `UPDATE ACTOR SET ACTOR_NAME = $2 WHERE ACTOR_ID = $1`;


const getGenres = 'SELECT * FROM GENRE';

const getMovies = 'SELECT * FROM MOVIE';
const getPosters = 'SELECT MOVIE_NAME, URL FROM MOVIE_POSTER INNER JOIN MOVIE ON MOVIE_POSTER.MOVIE_ID = MOVIE.MOVIE_ID'

module.exports = {
    getActors,
    getActorByID,
    checkActorExists,
    addActor,
    removeActor,
    updateActor,
    getGenres,
    getMovies,
    getPosters,
};