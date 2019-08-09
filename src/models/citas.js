//CITAS Y PRIORIDADES
let dbAdmin = require('../dbAdmin');
let citaModel = {};

citaModel.getPrioridad = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT * FROM prioridad_cita`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

citaModel.getTipo = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT * FROM tipo_cita`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

citaModel.getCitas = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`select c.*, p.nombre as paciente, p.ap_paterno as ap_paciente,
        m.nombre as medico, m.ap_paterno as ap_medico, pc.prioridad, tc.tipo from  citas as c 
        INNER JOIN	paciente as p on c.id_paciente = p.id_paciente
        INNER JOIN medico as m on c.id_medico = m.id_medico
        INNER JOIN prioridad_cita as pc on c.id_prioridad = pc.id_prioridad
        INNER JOIN tipo_cita as tc on c.id_tipo = tc.id_tipo`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

citaModel.insertCita = (citaData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO citas SET ? `, citaData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

citaModel.updateEstadoCita = (citaData, callback) =>{
    if (dbAdmin){
        const sql = `UPDATE citas SET 
                status = '${citaData.status}'
                WHERE id_cita = ${citaData.id_cita}`;
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

module.exports = citaModel;