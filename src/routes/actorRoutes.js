const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getActors);
router.post('/', controller.addActor);
router.get('/:actor_id', controller.getActorByID);
router.delete('/:actor_id', controller.removeActor);
router.put('/:id', controller.updateActor);
router.get('/cast/:movie_id', controller.getCast);
router.get('/castpicture/:movie_id', controller.getCastPicture);

module.exports = router;