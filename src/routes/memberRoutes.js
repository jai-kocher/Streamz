const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.post('/', controller.addMember);
router.get('/', controller.getMembers);
router.get('/:username', controller.getMemberByUsername);

module.exports = router;