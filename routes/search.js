const express = require('express');
const router = express.Router();
const searchController = require('../controllers/search');
router.get('/',searchController.searchAndRefine);

module.exports = router;