let dbAdmin = require('../dbAdmin');
let consultaModel = {};



consultaModel.insertConsulta = (consultaData, tratamiento, callback) => {
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
            }
        });
    }
}


module.exports = consultaModel;