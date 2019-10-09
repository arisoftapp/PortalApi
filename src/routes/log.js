const user = require('../models/user');
const jwt = require('jsonwebtoken');
const moment = require('moment');

module.exports = function (app) {
    app.post('/log', (req, res) => {
        var puesto = "";
        var pass = "";
        var username = "";
        var user_req = req.body.username;
        console.log(req.body);
        var encontrado;
        user.getUserByAdminUsername(user_req, (err, data) => {
            if (err){
                res.status(500).send({message: 'Error al comprobar usuario'});
            }else{
                var array = data[0];
                console.log(array)
                if (!array || array.length <= 0 ) {
                    encontrado = false;
                    res.json({ 
                        success: false,
                        message: 'El usuario indicado no existe',
                    });
                } else {
                    
                    pass = data[0].password;
                    username = data[0].username;
                    if (pass != req.body.password) {
                        res.json({ 
                            success: false,
                            message: 'La contraseña indicada no es correcta',
                        });
                    } else{
                        const payload = {
                            puesto: puesto,
                            username: username,
                        };
                        var token = jwt.sign(payload, app.get('secret'), {
                            expiresIn: '10080m' // expires in half an hour
                        });
                        var expiraEn = new Date();
                        expiraEn.setMinutes(expiraEn.getMinutes() + 10080);
                        res.json({
                            success: true,
                            message: 'Bienvenido',
                            expiresIn: expiraEn,
                            token: token,
                        });
                    }
                }
            }
        });
});
}
