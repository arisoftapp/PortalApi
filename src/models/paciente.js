let dbAdmin = require('../dbAdmin');
let pacienteModel = {};

pacienteModel.getPacientes = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT * FROM paciente`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

pacienteModel.getPaciente = (id_paciente, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT * FROM paciente WHERE id_paciente = ` + id_paciente, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

pacienteModel.insertPaciente = (pacienteData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO paciente SET ? `, pacienteData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

pacienteModel.updatePaciente = (pacienteData, callback) =>{
    if (dbAdmin){
        const sql = `UPDATE paciente SET 
                nombre = ${pacienteData.nombre},
                ap_paterno = ${pacienteData.ap_paterno},
                ap_materno = ${pacienteData.ap_materno},
                RFC = ${pacienteData.RFC},
                cedula_prof = ${pacienteData.cedula_prof},
                universidad = ${pacienteData.universidad},
                especialidad_1 = ${pacienteData.especialidad_1},
                especialidad_2 = ${pacienteData.especialidad_2},
                tel_fijo = ${pacienteData.tel_fijo},
                tel_cel = ${pacienteData.tel_cel},
                tel_adicional = ${pacienteData.tel_adicional},
                email = ${pacienteData.email},
                id_consultorio = ${pacienteData.id_consultorio},
                calle = ${pacienteData.calle},
                no_ext = ${pacienteData.no_ext},
                no_int = ${pacienteData.no_int},
                estado_id = ${pacienteData.estado_id},
                municipio_id = ${pacienteData.municipio_id},
                ciudad = ${pacienteData.ciudad},
                colonia = ${pacienteData.colonia},
                url_receta = ${pacienteData.url_receta},
                url_solic_analisis = ${pacienteData.url_solic_analisis},
                url_constacia = ${pacienteData.url_constacia},
                url_cert_med = ${pacienteData.url_cert_med},
                url_fact = ${pacienteData.url_fact},
                certificado = ${pacienteData.certificado},
                url_sello = ${pacienteData.url_sello},
                WHERE id_consultorio = ${pacienteData.id_paciente}`;
        dbAdmin.query(sql, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

pacienteModel.deletePaciente = (id_pac, callback) => {
    if (dbAdmin){
        dbAdmin.query(`DELETE FROM paciente WHERE id_paciente = ` + id_pac, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

module.exports = pacienteModel;