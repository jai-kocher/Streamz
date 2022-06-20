const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getMovies);
router.get('/poster/', controller.getPosters);

module.exports = router;