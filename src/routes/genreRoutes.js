const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getGenres);
router.get('/movie/:genre_id', controller.getGenreMovies);
router.get('/poster/:genre_id', controller.getGenrePosters);

module.exports = router;