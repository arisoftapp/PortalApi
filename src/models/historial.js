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

historialModel.getHistorial = (id_paciente, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`select h.*, af.enfermedad, af.parentesco from historial_medico as h 
            LEFT JOIN antecedentes_familiares as af on h.id_paciente = af.id_paciente WHERE h.id_paciente =` + id_paciente, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

module.exports = historialModel;