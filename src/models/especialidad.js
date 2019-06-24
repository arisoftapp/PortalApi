let dbAdmin = require('../dbAdmin');
let especialidadModel = {};

especialidadModel.getEsp = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query("SELECT * FROM especialidad WHERE id_especialidad NOT IN (0)", function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

especialidadModel.getEsp2 = (esp1, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`SELECT * FROM especialidad WHERE id_especialidad NOT IN ( 0, ` + esp1 + `)`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

especialidadModel.insertEsp = (nombre_esp, callback) =>{
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO especialidad (nombre_especialidad) VALUES ('` + nombre_esp + `')`, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

especialidadModel.putEsp = (id_esp, nombre_esp, callback) =>{
    if (dbAdmin){
        dbAdmin.query(`UPDATE especialidad SET nombre_especialidad = '`+ nombre_esp +  `' WHERE id_especialidad = ` + id_esp, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

especialidadModel.deleteEsp = (id_esp, callback) => {
    if (dbAdmin){
        dbAdmin.query(`DELETE FROM especialidad WHERE id_especialidad = ` + id_esp, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

module.exports = especialidadModel;