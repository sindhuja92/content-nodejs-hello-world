var express = require('express');
var router = express.Router();
var helloworld = require('../controllers/helloworld');

// Create endpoint /api/v1/helloworld for GET
router.get('/v1/helloworld', helloworld.get_helloworld);

//Export routes
module.exports = router;
