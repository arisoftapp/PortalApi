let dbAdmin = require('../dbAdmin');
let consultorioModel = {};

consultorioModel.getConsul = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query("SELECT * FROM consultorio WHERE id_consultorio NOT IN (0)", function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

consultorioModel.insertConsul = (nombre_consul, callback) =>{
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO consultorio (nombre_consultorio) VALUES ('` + nombre_consul + `')`, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

consultorioModel.updateConsul = (id_consul, nombre_consul, callback) =>{
    if (dbAdmin){
        dbAdmin.query(`UPDATE consultorio SET nombre_consultorio = '`+ nombre_consul +  `' WHERE id_consultorio = ` + id_consul, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

consultorioModel.deleteConsul = (id_consul, callback) => {
    if (dbAdmin){
        dbAdmin.query(`DELETE FROM consultorio WHERE id_consultorio = ` + id_consul, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
}

module.exports = consultorioModel;