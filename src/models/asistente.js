let dbAdmin = require('../dbAdmin');
let asistenteModel = {};

asistenteModel.getAsistentes = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT a.* FROM asistente AS a`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

asistenteModel.getAsistente = (id_asistente, callback) => {
    console.log(id_asistente)
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT a.* from asistente as a WHERE a.id_asistente =` + id_asistente, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

asistenteModel.getAsisMedico = (id_asistente, callback) => {
    console.log(id_asistente)
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT a.* from asis_medico as a WHERE a.id_asistente =` + id_asistente, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};


asistenteModel.insertAsistente = (asistenteData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO asistente SET ? `, asistenteData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

asistenteModel.updateAsistente = (asistenteData, callback) =>{
    if (dbAdmin){
        console.log(asistenteData)
        const sql = `UPDATE asistente SET 
                nombre = '${asistenteData.nombre}',
                ap_paterno = '${asistenteData.ap_paterno}',
                ap_materno = '${asistenteData.ap_materno}',
                telefono = '${asistenteData.telefono}',
                tel_add = '${asistenteData.tel_add}',
                no_ext = '${asistenteData.no_ext}',
                no_int = '${asistenteData.no_int}',
                calle = '${asistenteData.calle}',
                colonia = '${asistenteData.colonia}',
                permisos = '${asistenteData.permisos}',
                password = '${asistenteData.password}',
                username = '${asistenteData.username}'
                WHERE id_asistente = ${asistenteData.id_asistente}`;
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

asistenteModel.deleteAsistente = (id_asistente, callback) => {
    if (dbAdmin){
        dbAdmin.query(`DELETE FROM asistente WHERE id_asistente = ` + id_asistente, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

module.exports = asistenteModel;