const especialidad = require('../models/especialidad');

module.exports = function (app) {
    app.get('/especialidades', (req, res) => {
        especialidad.getEsp((err, data) => {
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

    app.get('/especialidad/:esp', (req, res) => {
        var id_esp = req.params.esp;
        especialidad.getEsp2(id_esp, (err, data) => {
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

    app.post('/especialidad', (req, res) => {
        var nom_esp = req.body.nombre_especialidad;
        especialidad.insertEsp(nom_esp, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se registró la especialidad exitosamente!"
                });
            }
        });
    });

    app.put('/especialidad', (req, res) => {
        var id_esp = req.body.id_especialidad;
        var nom_esp = req.body.nombre_especialidad;
        especialidad.putEsp(id_esp, nom_esp, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se editó la especialidad exitosamente!"
                });
            }
        });
    });

    app.delete('/especialidad/:id_esp', (req, res) => {
        var id_esp = req.params.id_esp;
        especialidad.deleteEsp(id_esp, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se eliminó la especialidad exitosamente!"
                });
            }
        });
    });


}