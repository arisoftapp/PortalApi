let dbAdmin = require('../dbAdmin');
let consultaModel = {};



consultaModel.insertConsulta = (consultaData, tratamiento, examenes, callback) => {
    if (dbAdmin){
       dbAdmin.query(`INSERT INTO consulta SET ? `, consultaData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
        dbAdmin.query('SELECT MAX(id_consulta) as id FROM consulta', (error, rows, fields) => {
            if (error) {
                console.log(error);
            } else {  
                console.log(rows[0].id);
                for(let item of tratamiento) {
                    console.log(item)
                    item.id_consulta = rows[0].id;
                    
                   dbAdmin.query(`INSERT INTO tratamiento SET ? `, item, (error, rows) => {
                        if (error) {
                            console.log(error);
                        } else {                  
                        }
                    });
                }
                var array = {};
               
               for(let items of examenes) {
                    array = {}
                    array.examen = items
                    array.id_consulta = rows[0].id;
                    array=  array
                    console.log(array)
                    dbAdmin.query(`INSERT INTO consulta_examen SET ? `, array, (error, rows) => {
                        if (error) {
                            console.log(error);
                        } else {                  
                        }
                    });
                }
            }

        });
        
    }

}

consultaModel.getConsultaPaciente = (id_paciente, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`select c.*, p.nombre as paciente, p.ap_paterno as ap_paciente,
        m.nombre as medico, m.ap_paterno as ap_medico from  consulta as c 
        INNER JOIN	paciente as p on c.id_paciente = p.id_paciente
        INNER JOIN medico as m on c.id_medico = m.id_medico
        WHERE p.id_paciente =` + id_paciente, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

consultaModel.getDetallesConsulta = (id_consulta,tipo, callback) => {
    //console.log(idEmpresa);
    
    if (dbAdmin) {
        if (tipo == 1){
        console.log("entro 1");
        dbAdmin.query(`select t.* FROM tratamiento as t
        WHERE t.id_consulta =` + id_consulta, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);  
            }
        });
        }else{
        console.log("entro 2");
        dbAdmin.query(`select t.* FROM consulta_examen as t
        WHERE t.id_consulta =` + id_consulta, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);  
            }
        });
    }
    }
};


module.exports = consultaModel;