let dbAdmin = require('../dbAdmin');
let medicoModel = {};

medicoModel.getMedicos = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT a.*, d.nombre_consultorio
        FROM medico AS a
        LEFT JOIN consultorio AS d ON a.id_consultorio = d.id_consultorio`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

medicoModel.getMedico = (id_medico, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT a.*, b.nombre_especialidad AS nombre_esp_1, c.nombre_especialidad AS nombre_esp_2, d.nombre_consultorio, e.nombre_estado, f.nombre_municipio
        FROM medico AS a
        INNER JOIN especialidad AS b ON a.especialidad_1 = b.id_especialidad
        INNER JOIN especialidad AS c ON a.especialidad_2 = c.id_especialidad
        INNER JOIN consultorio AS d ON a.id_consultorio = d.id_consultorio
        INNER JOIN entidad_fed AS e ON a.id_estado = e.id_estado
        INNER JOIN municipio AS f ON a.id_municipio = f.id_municipio
        WHERE a.id_medico =` + id_medico, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};


medicoModel.insertMedico = (medicoData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO medico SET ? `, medicoData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

medicoModel.updateMedico = (medicoData, callback) =>{
    if (dbAdmin){
        console.log(medicoData)
        const sql = `UPDATE medico SET 
                nombre = '${medicoData.nombre}',
                ap_paterno = '${medicoData.ap_paterno}',
                ap_materno = '${medicoData.ap_materno}',
                RFC = '${medicoData.RFC}',
                cedula_prof = '${medicoData.cedula_prof}',
                universidad = '${medicoData.universidad}',
                especialidad_1 = '${medicoData.especialidad_1}',
                especialidad_2 = '${medicoData.especialidad_2}',
                tel_fijo = '${medicoData.tel_fijo}',
                tel_cel = '${medicoData.tel_cel}',
                tel_adicional = '${medicoData.tel_adicional}',
                email = '${medicoData.email}',
                id_consultorio = '${medicoData.id_consultorio}',
                calle = '${medicoData.calle}',
                no_ext = '${medicoData.no_ext}',
                no_int = '${medicoData.no_int}',
                sexo ='${medicoData.sexo}',
                enfermedad_cronica = '${medicoData.enfermedad_cronica}',
                alergias = '${medicoData.alergias}',
                tipo_sangre = '${medicoData.tipo_sangre}',
                anotacion = '${medicoData.anotacion}',
                id_estado = '${medicoData.estado_id}',
                id_municipio = '${medicoData.municipio_id}',
                ciudad = '${medicoData.ciudad}',
                colonia = '${medicoData.colonia}',
                url_receta = '${medicoData.url_receta}',
                url_solic_analisis = '${medicoData.url_solic_analisis}',
                url_constacia = '${medicoData.url_constacia}',
                url_cert_med = '${medicoData.url_cert_med}',
                url_fact = '${medicoData.url_fact}',
                certificado = '${medicoData.certificado}',
                url_sello = '${medicoData.url_sello}'
                WHERE id_medico = ${medicoData.id_medico}`;
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

medicoModel.deleteMedico = (id_med, callback) => {
    if (dbAdmin){
        dbAdmin.query(`DELETE FROM medico WHERE id_medico = ` + id_med, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

module.exports = medicoModel;