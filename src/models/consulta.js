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
                    
                    item.id_consulta = rows[0].id;
                    console.log(item);
                    dbAdmin.query(`INSERT INTO tratamiento SET ? `, item, (error, rows) => {
                        if (error) {
                            console.log(error);
                        } else {                  
                        }
                    });
                }
                var array = [];
            /*<<<<<<<PENDIENTE NO QUIERE INSERTARLO>>>>>>>>>>>>>>>>>>>
                for(let items of examenes) {
                    array.examen = items;
                    array.id_consulta = rows[0].id;
                    
                    console.log(array);
                    dbAdmin.query(`INSERT INTO consulta_examen (examen, id_consulta)SET ? `, array, (error, rows) => {
                        if (error) {
                            console.log(error);
                        } else {                  
                        }
                    });
                }  */ 
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


module.exports = consultaModel;