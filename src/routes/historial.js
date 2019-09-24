const historial = require('../models/historial');

module.exports = function (app) {

app.post('/historial', (req, res) => {
    console.log(req.body);
    
    const historialData = {
        id_paciente: req.body.id_paciente,
        an_patologicos: req.body.anp,
        a_patologicos: req.body.ap,
        a_traumatico: req.body.at,
        a_prenatales: req.body.apre,
        a_neonatales: req.body.aneo,
        problemas: req.body.problemas_neo,
        alimentacion: req.body.alimentacion,
    };
    const familiares = req.body.af

    historial.insertHistorial(historialData, familiares, (err, data) => {
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


app.put('/historialPaciente', (req, res) => {
    console.log(req.body)
    const id =  req.body.id_paciente
    
    historial.updatePaciente(id, (err, data) => {
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
