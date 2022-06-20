const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getGenres);

module.exports = router;