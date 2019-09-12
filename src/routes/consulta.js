const consulta = require('../models/consulta');

module.exports = function (app) {
app.post('/consulta', (req, res) => {
    const consultaData = {
        id_paciente: req.body.id_paciente,
        id_medico:  req.body.id_medico,
        id_cita:   req.body.id_cita,
        peso:   req.body.peso,
        altura:   req.body.altura,
        presion: req.body.presion,
        glucosa:  req.body.glucosa,
        diagnostico: req.body.diagnostico,
    };
    const tratamiento= req.body.tratamiento;
    consulta.insertConsulta(consultaData, tratamiento, (err, data) => {
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
}