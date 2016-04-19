var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  multer = require('multer'),
  path = require('path'),
  fs = require('fs'),
  mime = require('mime'),
  crypto = require('crypto'),
  q = require('q'),
  Request = mongoose.model('Request');

var storage =   multer.diskStorage({
  destination: function (req, file, callback) {
    var destination = './public/uploads/' + req.body.nombre_proyecto;
    if (!fs.existsSync(destination)){
            fs.mkdirSync(destination);
    }
        callback(null, destination);
  },
  fileFilter: function (req, file, cb) {
    if (path.extension(file.originalname) !== '.pdf') {
      return cb(null, false)
    }

    cb(null, true)
  },
  filename: function (req, file, cb) {
    crypto.pseudoRandomBytes(16, function (err, raw) {
               cb(null,  raw.toString('hex')+ "_" + file.originalname );
      });
    }
  });
var upload = multer({ storage : storage }).fields([{name : "comprobante1"}, {name: "comprobante2"}, {name: "comprobante3"}, {name: "archivo_proyecto"}]); 

//[{name : "comprobante1"}, {name: "omprobante2"}, {name: "comprobante3"}, {name: "archivo_proyecto"}]
module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
    Request.find(function(err, docs) {
	    if(err) res.send("ok");
	    res.render('formulario_final', {
                title: 'Generator-Express MVC', requests : docs		
        });
    });
});

router.get('/test', function(req, res, next) {
    res.render('test', {data: "hi"});
});


router.post('/form-uno', function(req, res, next) {
/*	
    function saveFile(req, res) {
	var deferred = q.defer();		
	upload(req, res, function(err) {
	    if(err) {
		    deferred.reject(err)
	        } else {
            	    deferred.resolve();
		}
	    
	});
	return deferred.promise;
    };

    saveFile(req, res).then(function() {
	var proyecto = {
	            "nombre_proyecto": req.body.nombre_proyecto,
	            "eje_tematico": req.body.eje_tematico,
	            "participantes": [{
			"nombre": req.body.nombre_del_participante1,
			"categoria": req.body.categoria_participante1,
	        	"institucicon": req.body.institucion_participante1,
			"plantel" : req.body.plantel_participante1,
			"comprobante": req.files.comprobante1[0].destination + "/" + req.files.comprobante1[0].originalname,
		}, {
			"nombre": req.body.nombre_del_participante2,
			"categoria": req.body.categoria_participante2,
	        	"institucicon": req.body.institucion_participante2,
			"plantel" : req.body.plantel_participante2,
			"comprobante": req.files.comprobante2[0].destination + "/" + req.files.comprobante1[0].originalname,
		}, {
			"nombre": req.body.nombre_del_participante3,
			"categoria": req.body.categoria_participante3,
	        	"institucicon": req.body.institucion_participante3,
			"plantel" : req.body.plantel_participante3,
			"comprobante": req.files.comprobante3[0].destination + "/" + req.files.comprobante1[0].originalname,
		}],
		"resumen": req.body.resumen,
		"documento": [{
			"antecedentes": req.body.antecedentes,
			"justificacion": req.body.justificacion,
			"metodologia": req.body.metodologia,
			"propuesta": req.body.propuesta,
			"resultados": req.body.resultados,
			"conclusiones": req.body.conclusiones,
			"referencias": [{
				"referencia": req.body.bibliografia
			}]
		}],
		"url_documento": req.files.archivo_proyecto[0].destination + "/" + req.files.comprobante1[0].originalname,
		"url_anexo": req.body.anexo
		};
	var request = new Request(proyecto); 
	request.save(function(err, doc){
		if(err) {console.log(err); return res.send("Error");}
		res.send("ok");
	});
    }).catch(function(err) {
	    console.log(err);
    });
    */
    res.send(req.body);
    res.send(req.files);
});



