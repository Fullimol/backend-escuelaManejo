var express = require('express');
var router = express.Router();
var usuariosModel = require ('./../../models/usuariosModel');

/* GET home page. */
router.get('/', function (req, res, next) {
    var conocido = Boolean(req.session.nombre);

    res.render('admin/login', {
        layout: 'admin/layout',
    });
});

router.get('/logout', function (req,res, next){
    req.session.destroy();
    res.render('admin/login', {
        layout: 'admin/layout'
    });
});

router.post('/', async (req, res, next) => {
    try {
        var usuario = req.body.usuario;
        var password = req.body.password

        var data = await usuariosModel.getUserAndPass(usuario, password);

        if(data != undefined) {

            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;

            res.redirect('/admin/novedades');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            });
        }
    } catch(error) {
        console.log(error);
    }

});


// router.post('/ingresar', function (req, res) {
//     if (req.body.nombre) {
//         req.session.nombre = req.body.nombre
//     }
//     res.redirect('/admin/login');
// });


// router.get('/salir', function (req, res) {
//     req.session.destroy()
//     res.redirect('/admin/login')
// });

module.exports = router;