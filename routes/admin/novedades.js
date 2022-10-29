var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    var conocido = Boolean(req.session.nombre);

    res.render('admin/novedades', {
        layout: 'admin/layout',
        persona: req.session.nombre
    });
});

module.exports = router;