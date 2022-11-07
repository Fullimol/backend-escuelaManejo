var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel')

/* para listar novedades */
router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.getNovedades();

    res.render('admin/novedades', {
        layout: 'admin/layout',
        persona: req.session.nombre,
        novedades
    });
});
// fin listar novedades

// boton "NUEVO" agregar novedad
router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    })
})

// insertar la novedad
router.post('/agregar', async (req, res, next) => {
    try {
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargó la novedad'
        })
    }
})

// eliminar

router.get('/eliminar/:id', async (req, res, next) => {
    let id = req.params.id;

    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades')
});

// fin eliminar

module.exports = router;