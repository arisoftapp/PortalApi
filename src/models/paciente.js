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
        dbAdmin.query(`SELECT paciente.*, b.razon_soc AS fact_razonsoc, b.rfc AS fact_rfc, b.cp AS fact_cp, b.calle AS fact_calle, 
        b.no_ext AS fact_ext, b.no_int AS fact_int, b.id_edo AS fact_idedo, b.id_mun AS fact_idmun, b.colonia AS fact_colonia, 
        b.email AS fact_email FROM paciente LEFT JOIN fact_paciente AS b ON paciente.id_paciente = b.id_paciente 
        WHERE paciente.id_paciente = ` + id_paciente, function(err, rows) {
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
                nombre = '${pacienteData.nombre}',
                ap_paterno = '${pacienteData.ap_paterno}',
                ap_materno = '${pacienteData.ap_materno}',
                RFC = '${pacienteData.RFC}',
                tel_fijo = '${pacienteData.tel_fijo}',
                tel_cel = '${pacienteData.tel_cel}',
                tel_alter = '${pacienteData.tel_alter}',
                email = '${pacienteData.email}',
                calle = '${pacienteData.calle}',
                no_ext = '${pacienteData.no_ext}',
                no_int = '${pacienteData.no_int}',
                id_edo = ${pacienteData.estado_id},
                id_mun = ${pacienteData.municipio_id},
                ciudad = '${pacienteData.ciudad}',
                colonia = '${pacienteData.colonia}'
                WHERE id_paciente = ${pacienteData.id_paciente}`;
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