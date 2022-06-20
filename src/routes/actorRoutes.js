const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.get('/', controller.getActors);
router.post('/', controller.addActor);
router.get('/:actor_id', controller.getActorByID);
router.delete('/:actor_id', controller.removeActor);
router.put('/:id', controller.updateActor);

module.exports = router;