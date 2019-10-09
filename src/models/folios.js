//CITAS Y PRIORIDADES
let dbAdmin = require('../dbAdmin');
let foliosModel = {};

foliosModel.getFolios = (callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`select f.*, a.nombre as almacen , p.nombre as proveedor, e.nombre as empresa from folios as f 
        LEFT JOIN almacen as a on f.id_almacen = a.id_almacen
        LEFT JOIN proveedor as p on f.id_almacen = p.id_pro
        LEFT JOIN empresa as e on f.id_empresa = e.id_empresa`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

foliosModel.getDetalles = (id, callback) => {
    //console.log(idEmpresa);
    if (dbAdmin) {
        dbAdmin.query(`select d.*, a.articulo from detalles_folio as d 
        LEFT JOIN articulos as a on d.id_articulo = a.id_articulo
        where d.id_detalles = `+id, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

foliosModel.updateComentario = (data, callback) =>{
    console.log(data)
    if (dbAdmin){
        const sql = `UPDATE folios SET 
                comentario = '${data.comentario}',
                estatus = '2'
                WHERE folio_previo = ${data.folio_previo}`;
        dbAdmin.query(sql, function (error, rows){
            if (error) {
                console.log(error);
                //callback(null,err.message)
            } else {                  
                callback(null, rows);
            }
        });
    }
};
/*
foliosModel.insertCita = (citaData, callback) => {
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


*/
module.exports = foliosModel;