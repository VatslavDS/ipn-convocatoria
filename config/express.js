var express = require('express');
var glob = require('glob');

var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var compress = require('compression');
var passport = require('passport');
var methodOverride = require('method-override');
var swig = require('swig');
var session = require('express-session');
var flash  = require('connect-flash');
var multer = require('multer');
require('./passport')(passport); // pass passport for configuration


module.exports = function(app, config) {


  var env = process.env.NODE_ENV || 'development';
  app.locals.ENV = env;
  app.locals.ENV_DEVELOPMENT = env == 'development';

  app.engine('swig', swig.renderFile);
  if(env == 'development'){
    app.set('view cache', false);
    swig.setDefaults({ cache: false });
  }
  app.set('views', config.root + '/app/views');
  app.set('view engine', 'swig');



  // app.use(favicon(config.root + '/public/img/favicon.ico'));
  app.use(logger('dev'));
  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({
    extended: true
  }));
  app.use(cookieParser());

  //Passport y middleware para utilizar el login
  app.use(session({secret: 'IPN'}));
  app.use(passport.initialize());
  app.use(passport.session());



  app.use(compress());
  app.use(flash());


  app.use(express.static(config.root + '/public'));
  app.use(methodOverride());

  var controllers = glob.sync(config.root + '/app/controllers/*.js');
  controllers.forEach(function (controller) {
    require(controller)(app, passport);
  });


  app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
  });

  if(app.get('env') === 'development'){
    app.use(function (err, req, res, next) {
      res.status(err.status || 500);
      res.render('error', {
        message: err.message,
        error: err,
        title: 'error'
      });
    });
  }

  app.use(function (err, req, res, next) {
    res.status(err.status || 500);
      res.render('error', {
        message: err.message,
        error: {},
        title: 'error'
      });
  });

};
