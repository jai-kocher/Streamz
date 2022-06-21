const express = require('express');
const router = express.Router();
const controller = require('../data/controller.js');

router.post('/', controller.addMember);
router.get('/', controller.getMembers);

module.exports = router;