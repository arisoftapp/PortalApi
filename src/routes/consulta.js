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
        motivo: req.body.motivo,
        interrogatorio: req.body.interrogatorio,
        FR: req.body.FR,
        FC: req.body.FC,
        temperatura: req.body.temperatura,
        imc: req.body.imc,
    };
    const tratamiento= req.body.tratamiento;
    const examenes = req.body.examenes;
  
    
    consulta.insertConsulta(consultaData, tratamiento, examenes, (err, data) => {
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


app.get('/detallesConsulta/:id_paciente/:tipo', (req, res) => {
    var id = req.params.id_paciente;
    var tipo = req.params.tipo;
    consulta.getDetallesConsulta(id,tipo, (err, data) => {
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