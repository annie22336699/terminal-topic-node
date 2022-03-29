const express = require('express');
const shareController = require('./../Controllers/shareController');

const router = express.Router();

router.route('/').get(shareController.getShareItems);

module.exports = router;
