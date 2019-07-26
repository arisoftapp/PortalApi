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

module.exports = citaModel;