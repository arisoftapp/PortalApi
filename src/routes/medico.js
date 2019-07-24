const medico = require('../models/medico');

module.exports = function (app) {
    app.get('/medicos', (req, res) => {
        medico.getMedicos((err, data) => {
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

    app.get('/medico/:id_medico', (req, res) => {
        var id_medico = req.params.id_medico;
        medico.getMedico(id_medico, (err, data) => {
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

    app.post('/medico', (req, res) => {
        const medicoData = {
            id_medico : req.body.id_medico,
            nombre : req.body.nombre,
            ap_paterno : req.body.ap_paterno,
            ap_materno : req.body.ap_materno,
            fecha_nac : req.body.fecha_nac,
            RFC : req.body.RFC,
            cedula_prof : req.body.cedula_prof,
            universidad : req.body.universidad,
            especialidad_1 : req.body.especialidad_1,
            especialidad_2 : req.body.especialidad_2,
            tel_fijo : req.body.tel_fijo,
            tel_cel : req.body.tel_cel,
            tel_adicional : req.body.tel_adicional,
            email : req.body.email,
            id_consultorio : req.body.id_consultorio,
            calle : req.body.calle,
            no_ext : req.body.no_ext,
            no_int : req.body.no_int,
            id_estado : req.body.estado_id,
            id_municipio : req.body.municipio_id,
            ciudad : req.body.ciudad,
            colonia : req.body.colonia,
            tipo_sangre : req.body.tipo_sangre,
            alergias : req.body.alergias,
            enfermedad_cronica : req.body.enfermedad_cronica,
            anotacion :  req.body.anotacion,
            sexo: req.body.sexo,
            url_receta : req.body.url_receta,
            url_solic_analisis : req.body.url_solic_analisis,
            url_constacia : req.body.url_constacia,
            url_cert_med : req.body.url_cert_med,
            url_fact : req.body.url_fact,
            certificado : req.body.certificado,
            url_sello : req.body.url_sello
        };
        medico.insertMedico(medicoData, (err, data) => {
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

    app.put('/medico', (req, res) => {
        const medicoData = {
            id_medico : req.body.id_medico,
            nombre : req.body.nombre,
            ap_paterno : req.body.ap_paterno,
            ap_materno : req.body.ap_materno,
            RFC : req.body.RFC,
            cedula_prof : req.body.cedula_prof,
            universidad : req.body.universidad,
            especialidad_1 : req.body.especialidad_1,
            especialidad_2 : req.body.especialidad_2,
            tel_fijo : req.body.tel_fijo,
            tel_cel : req.body.tel_cel,
            tel_adicional : req.body.tel_adicional,
            email : req.body.email,
            id_consultorio : req.body.id_consultorio,
            calle : req.body.calle,
            no_ext : req.body.no_ext,
            no_int : req.body.no_int,
            estado_id : req.body.estado_id,
            municipio_id : req.body.municipio_id,
            ciudad : req.body.ciudad,
            colonia : req.body.colonia,
            tipo_sangre : req.body.tipo_sangre,
            alergias : req.body.alergias,
            enfermedad_cronica : req.body.enfermedad_cronica,
            anotacion :  req.body.anotacion,
            sexo: req.body.sexo,
            url_receta : req.body.url_receta,
            url_solic_analisis : req.body.url_solic_analisis,
            url_constacia : req.body.url_constacia,
            url_cert_med : req.body.url_cert_med,
            url_fact : req.body.url_fact,
            certificado : req.body.certificado,
            url_sello : req.body.url_sello
        };
        medico.updateMedico(medicoData, (err, data) => {
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

    app.delete('/medico/:id_medico', (req, res) => {
        var id_medico = req.params.id_medico;
        medico.deleteMedico(id_medico, (err, data) => {
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