const consultorio = require('../models/consultorio');

module.exports = function (app) {
    app.get('/consultorios', (req, res) => {
        consultorio.getConsul((err, data) => {
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

    app.post('/consultorio', (req, res) => {
        var nom_esp = req.body.nombre_consultorio;
        consultorio.insertConsul(nom_esp, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se registró el consultorio exitosamente!"
                });
            }
        });
    });

    app.put('/consultorio', (req, res) => {
        var id_consul = req.body.id_consultorio;
        var nom_consul = req.body.nombre_consultorio;
        consultorio.updateConsul(id_consul, nom_consul, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se editó el consultorio exitosamente!"
                });
            }
        });
    });

    app.delete('/consultorio/:id_consul', (req, res) => {
        var id_consul = req.params.id_consul;
        consultorio.deleteConsul(id_consul, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se eliminó el consultorio exitosamente!"
                });
            }
        });
    });


}