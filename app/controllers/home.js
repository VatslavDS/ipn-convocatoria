var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  multer = require('multer'),
  path = require('path'),
  fs = require('fs'),
  mime = require('mime'),
  crypto = require('crypto'),
  mom = require('moment'),
  q = require('q'),
  Request = mongoose.model('Request');

var storage = multer.diskStorage({
  destination: function (req, file, callback) {
    var destination_file = './public/uploads/' + mom().unix();
    console.log(destination_file);
    if (!fs.existsSync(destination_file)){
            fs.mkdirSync(destination_file);
    }
        callback(null, destination_file);
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


router.post('/form-uno', multer({storage: storage}).any(), function(req, res, next) {
    var files = req.files;
    var body = req.body;
    var back_references = req.body.referencias.split(" , ");
    var final_references = [];
    for(var i = 0; i< back_references.length; i++) {
        if(back_references[i] !== "undefined") {
            var current = {"referencia": back_references[i]};
	    final_references.push(current);
	}
    }

    console.log(final_references);
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
	            "nombre_del_proyecto": body.nombre_del_proyecto,
	            "eje_tematico": body.eje_tematico,
	            "participantes": [{
			"nombre": body.nombre_del_participante_1,
			"categoria": body.categoria_participante_1,
	        	"institucicon": body.institucion_participante_1,
			"plantel" : body.plantel_participante_1,
			"comprobante": files[1].destination + "/" + files[1].originalname,
		}, {
			"nombre": body.nombre_del_participante_2,
			"categoria": body.categoria_participante_2,
	        	"institucicon": body.institucion_participante_2,
			"plantel" : body.plantel_participante_2,
			"comprobante": files[2].destination + "/" + files[2].originalname,
		}, {
			"nombre": body.nombre_del_participante_3,
			"categoria": body.categoria_participante_3,
	        	"institucicon": body.institucion_participante_3,
			"plantel" : body.plantel_participante_3,
			"comprobante": files[3].destination + "/" + files[3].originalname,
		}],
		"resumen": body.resumen,
		"documento": [{
			"antecedentes": body.antecedentes,
			"justificacion": body.justificacion,
			"metodologia": body.metodologia,
			"propuesta": body.propuesta,
			"resultados": body.resultados,
			"conclusiones": body.conclusiones,
                        "archivo_proyecto": files[0].destination + "/" + files[0].originalname,
			"referencias": final_references
		}],
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
});



