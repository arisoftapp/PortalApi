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
/*
app.post('/citas', (req, res) => {
    const citaData = {
        id_paciente: req.body.id_paciente,
        id_medico:  req.body.id_medico,
        id_prioridad:   req.body.id_prioridad,
        id_tipo:   req.body.id_tipo,
        hora:   req.body.hora,
        hora_f: req.body.hora_f,
        fecha:  req.body.fecha,
        sintomas:   req.body.sintomas,
        status: req.body.status
    };
    cita.insertCita(citaData, (err, data) => {
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


*/

}
