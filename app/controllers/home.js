var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  path = require('path'),
  fs = require('fs'),
  Request = mongoose.model('Request');


module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
    Request.find(function(err, docs) {
	    console.log(docs);
	    if(err) res.send("ok");
	    res.render('index', {
                title: 'Generator-Express MVC', requests : docs		
        });
    });
});

router.get('/test', function(req, res, next) {
    res.render('test', {data: "hi"});
});

router.post('/file-upload', function(req, res, next) {
	var tempPath = req.file.path,
	str_temp = './public/uploads/' + req.file.originalname;
	console.log(req.file);
        targetPath = path.resolve(str_temp);
        fs.rename(tempPath, targetPath, function(err) {
            if (err) throw err;
            console.log("Upload completed!");
        });
    
});



