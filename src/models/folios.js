//CITAS Y PRIORIDADES
let dbAdmin = require('../dbAdmin');
let foliosModel = {};

foliosModel.getFolios = (callback) => {
    
    if (dbAdmin) {
        dbAdmin.query(`select f.*, a.nombre as almacen , p.nombre as proveedor, e.nombre as empresa from folios as f 
        LEFT JOIN almacen as a on f.id_almacen = a.id_almacen
        LEFT JOIN proveedor as p on f.id_provedor = p.id_pro
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
   
    if (dbAdmin) {
        dbAdmin.query(`select d.*, a.articulo from detalles_folio as d
        LEFT JOIN articulos as a on d.id_articulo = a.id_articulo and d.id_empresa = a.id_empresa
        where d.folio_oc =`+`'`+id+`'`, function(err, rows) {
            if (err) {
                throw err;
            }
            else {
                callback(null, rows);
            }
        });
    }
};

foliosModel.getAlmacen = (id, callback) => {
    
    if (dbAdmin) {
        dbAdmin.query(`select * from almacen where id_empresa =`+`'`+id+`'`, function(err, rows) {
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

foliosModel.insertFolio = (foliosData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO folios SET ? `, foliosData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

foliosModel.insertEmpresa = (reqData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`INSERT INTO empresa SET ? `, reqData, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                callback(null, rows);
            }
        });
    }
}

foliosModel.insertAlmacen = (reqData, callback) => {
    if (dbAdmin){
        dbAdmin.query(`SELECT id_almacen FROM  almacen as a WHERE EXISTS (select * from  empresa as e WHERE a.id_empresa = `+reqData.id_empresa +` and a.id_almacen =`+reqData.id_almacen +`)`, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                row= rows;
                if(row.length> 0){
                }else{
                    dbAdmin.query(`INSERT INTO almacen SET ? `, reqData, (error, rows) =>{
                        if (error) {
                            console.log(error);
                        } else { 
                            console.log('Tupla afectada')                 
                            callback(null, rows);
                        }
                    });
                }
            }
        });
       
    }
}
/*SELECT id_pro   
FROM  proveedor as p
WHERE EXISTS (select * from  empresa as e WHERE p.id_empresa = 3 and p.id_pro = 3) ;*/
foliosModel.insertProveedor = (reqData, callback) => {
    if (dbAdmin){

        dbAdmin.query(`SELECT id_pro FROM  proveedor as p 
        WHERE EXISTS (select * from  empresa as e WHERE p.id_empresa = `+reqData.id_empresa +` and p.id_pro =`+reqData.id_pro +`)`, (error, rows) => {
            if (error) {
                console.log(error);
            } else {                  
                row= rows;
                if(row.length> 0){
                }else{
                    
                    dbAdmin.query(`INSERT INTO proveedor SET ? `, reqData, (error, rows) => {
                        if (error) {
                            console.log(error);
                        } else { 
                            console.log('Tupla afectada')                 
                            callback(null, rows);
                        }
                    });
                }
            }
        });
}
}

foliosModel.insertDetalles = (reqData, callback) => {
    if (dbAdmin){
        let row;
        for(let item of reqData) {
            item.pendiente = parseInt(item.cantidad, 10) - parseInt(item.recibido, 10),
            dbAdmin.query(`INSERT INTO detalles_folio SET ? `, item, (error, rows) => {
                if (error) {
                    console.log(error);
                } else {                  
                    row= rows;
                }
            });
        }
        callback(null, row);  
    }
}

foliosModel.insertarticulo = (reqData, callback) => {
    if (dbAdmin){
        let row;
        for(let item of reqData) {
            dbAdmin.query(`SELECT id_articulo FROM  articulos as a
                WHERE EXISTS (select * from  empresa as e WHERE a.id_empresa =`+item.id_empresa+` and a.id_articulo =`+item.id_articulo+`)`, (error, rows) => {
                if (error) {
                    console.log(error);
                } else {                  
                    row= rows;
                    if(row.length> 0){  
                    }else{
                        item.pendiente = parseFloat(item.cantidad) - parseFloat(item.recibido);
                        item.pendiente =  item.pendiente.toFixed(2);
                        dbAdmin.query(`INSERT INTO articulos SET ? `, item, (error, rows) => {
                            if (error) {
                                console.log(error);
                            } else {                  
                                row= rows;
                                console.log("Tabla afectada");
                            }
                        });
                    }
                }
            });
        }
        callback(null, row);  
    }
}

module.exports = foliosModel;
