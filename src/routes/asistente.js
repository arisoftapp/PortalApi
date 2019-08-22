const asistente = require('../models/asistente');


module.exports = function (app) {
    app.get('/asistente', (req, res) => {
        asistente.getAsistentes((err, data) => {
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

    app.get('/asismedicos/:id_asistente', (req, res) => {
        var id_asistente = req.params.id_asistente;
        asistente.getAsisMedico(id_asistente, (err, data) => {
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

    app.get('/asistente/:id_asistente', (req, res) => {
        var id_asistente = req.params.id_asistente;
        asistente.getAsistente(id_asistente, (err, data) => {
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

    app.post('/asistente', (req, res) => {
        const asistenteData = {
            nombre : req.body.nombre,
            ap_paterno : req.body.ap_paterno,
            ap_materno : req.body.ap_materno,
            calle : req.body.calle,
            no_ext : req.body.no_ext,
            no_int : req.body.no_int,
            colonia : req.body.colonia,
            telefono : req.body.telefono,
            tel_add : req.body.tel_add,
            permisos : req.body.permisos,
           
        };
        asistente.insertAsistente(asistenteData, (err, data) => {
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

    app.put('/asistente', (req, res) => {
        console.log(req.body)
        const asistenteData = {
            id_asistente : req.body.id_asistente,
            nombre : req.body.nombre,
            ap_paterno : req.body.ap_paterno,
            ap_materno : req.body.ap_materno,
            calle : req.body.calle,
            no_ext : req.body.no_ext,
            no_int : req.body.no_int,
            colonia : req.body.colonia,
            telefono : req.body.telefono,
            tel_add : req.body.tel_add,
            permisos : req.body.permisos,
            username: req.body.username,
            password: req.body.password
        };
        asistente.updateAsistente(asistenteData, (err, data) => {
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

    app.delete('/asistente/:id_asistente', (req, res) => {
        var id_asistente = req.params.id_asistente;
        asistente.deleteAsistente(id_asistente, (err, data) => {
            if (err){
                res.json({
                    success: false,
                    message: err
                });
            }else{
                res.json({
                    success: true,
                    message: "¡Se ha eliminado el registro exitosamente!"
                });
            }
        });
    });


}