const consulta = require('../models/consulta');

module.exports = function (app) {
app.post('/consulta', (req, res) => {
    const fecha = new Date();
   
    const f = ( fecha.getFullYear() + "-" + (fecha.getMonth() +1) + "-" + fecha.getDate());
    const consultaData = {
        id_paciente: req.body.id_paciente,
        id_medico:  req.body.id_medico,
        id_cita:   req.body.id_cita,
        peso:   req.body.peso,
        altura:   req.body.altura,
        presion: req.body.presion,
        glucosa:  req.body.glucosa,
        diagnostico: req.body.diagnostico,
        fecha: f,
    };
    const tratamiento= req.body.tratamiento;
    consulta.insertConsulta(consultaData, tratamiento, (err, data) => {
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

app.get('/consulta/:id_paciente', (req, res) => {
    var id = req.params.id_paciente;
    consulta.getConsultaPaciente(id, (err, data) => {
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

}