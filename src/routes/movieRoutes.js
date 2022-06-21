const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getMovies);
router.get('/:movie_id', controller.getMovieByID);
router.get('/poster/', controller.getPosters);
router.get('/poster/:movie_id', controller.getPosterByID);
router.get('/directorpicture/:movie_id', controller.getDirectorPicture);
router.get('/director/:movie_id', controller.getDirector);

module.exports = router;