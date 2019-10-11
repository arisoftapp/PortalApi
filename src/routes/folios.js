//CITAS Y PRIORIDADES
const folio = require('../models/folios');

module.exports = function (app) {

app.get('/folios', (req, res) => {
    folio.getFolios((err, data) => {
        if (err) {
            res.json({
                success: false,
                message: "Ocurrió un error al obtener los datos"
            });
        } else{
            res.json({
                success: true,
                data: data
            });
        }
    });
});
//Se consiguen las consultas del paciente
app.get('/detalles/:id', (req, res) => {
    var id = req.params.id;
    folio.getDetalles(id, (err, data) => {
        if (err) {
            res.json({
                success: false,
                message: "Ocurrió un error al obtener los datos"
            });
        } else{
            res.json({
                success: true,
                data: data
            });
        }
    });
});

app.put('/comentario', (req, res) => {
    console.log(req.body);
    const Data = {
        comentario : req.body.comentario,
        folio_previo : req.body.folio_previo,
    };
    folio.updateComentario(Data, (err, data) => {
        if (err){
            res.json({
                success: false,
                message: err
            });
        }else{
            res.json({
                success: true,
                message: "¡Se Guardaron los cambios exitosamente!"
            });
        }
    });
});

app.post('/insert', (req, res) => {
    const folioData = {
        folio_previo: req.body.folio_previo,
        fecha_previo: req.body.fecha_previo,
        folio_oc: req.body.folio_oc,
        fecha_oc: req.body.fecha_oc,
        id_provedor: req.body.id_provedor,
        id_almacen: req.body.id_almacen,
        id_detalles: req.body.id_detalles,
        id_empresa: req.body.id_empresa,
        usuario: req.body.usuario,
        comentario_in: req.body.comentario_in,
        estatus: 1
    };
    folio.insertFolio(folioData, (err, data) => {
        if (err){
            res.json({
                success: false,
                message: err
            });
        }else{
            res.json({
                success: true,
                message: "¡Registro exitoso!"
            });
        }
    });
});

app.post('/insertDetalles', (req, res) => {
    const reqdata = req.body;
    folio.insertDetalles(reqdata, (err, data) => {
        if (err){
            res.json({
                success: false,
                message: err
            });
        }else{
            res.json({
                success: true,
                message: "¡Registro exitoso!"
            });
        }
    });
});

app.post('/insertArticulo', (req, res) => {
    const reqdata = req.body;
    folio.insertarticulo(reqdata, (err, data) => {
        if (err){
            res.json({
                success: false,
                message: err
            });
        }else{
            res.json({
                success: true,
                message: "¡Registro exitoso!"
            });
        }
    });
});


}
