//Antecedentes del Historial Modelo
let dbAdmin = require('../dbAdmin');
let historialModel = {};

historialModel.insertHistorial = (historialData, familiares, callback) => {

    if (dbAdmin){
        dbAdmin.query(`INSERT INTO historial_medico SET ? `, historialData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {
            for(let item of familiares) {
                console.log(item);
                        
                dbAdmin.query(`INSERT INTO antecedentes_familiares SET ? `, item, (error, rows) => {
                    if (error) {
                        console.log(error);
                    } else {              
                        callback(null, rows);
                    }
                });
                }
            }
        });
    }
}

historialModel.updatePaciente = (id_paciente, callback) =>{
    if (dbAdmin){
        const sql = `UPDATE paciente SET 
                historial = 2
                WHERE id_paciente = ${id_paciente}`;
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

module.exports = historialModel;