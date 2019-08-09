//CITAS Y PRIORIDADES
const cita = require('../models/citas');

module.exports = function (app) {
app.get('/prioridad', (req, res) => {
    cita.getPrioridad((err, data) => {
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

app.get('/citas', (req, res) => {
    cita.getCitas((err, data) => {
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

app.get('/tipo', (req, res) => {
    cita.getTipo((err, data) => {
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

app.post('/citas', (req, res) => {
    const citaData = {
        id_cita : req.body.id_cita,
        id_paciente: req.body.id_paciente,
        id_medico:  req.body.id_medico,
        id_prioridad:   req.body.id_prioridad,
        id_tipo:   req.body.id_tipo,
        hora:   req.body.hora,
        fecha:  req.body.fecha,
        sintomas:   req.body.sintomas,
        status: req.body.status
    };
    cita.insertCita(citaData, (err, data) => {
        console.log(data);
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

app.put('/status', (req, res) => {
    const citaData = {
        id_cita : req.body.id_cita,
        status : req.body.status,
    };
    cita.updateEstadoCita(citaData, (err, data) => {
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


}
