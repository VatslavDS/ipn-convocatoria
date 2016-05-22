var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  multer = require('multer'),
  path = require('path'),
  fs = require('fs'),
  mime = require('mime'),
  crypto = require('crypto'),
  passport = require('passport'),
  mom = require('moment'),
  q = require('q');

// app/routes.js
module.exports = function(app, passport) {

	app.get('/login', function(req, res) {

		// render the page and pass in any flash data if it exists
		res.render('login.swig', { message: "ok" });
	});

	app.post('/login', passport.authenticate('local-login', {
		successRedirect : '/home_admin', // redirect to the secure profile section
		failureRedirect : '/login', // redirect back to the signup page if there is an error
	}), function(req, res, next){
		next();
	});

	app.get('/signup', function(req, res) {

		res.render('signup.swig', { message: "ok" });
	});

	app.post('/signup', passport.authenticate('local_signup', {
		successRedirect : '/', 
		failureRedirect : '/signup', // redirect back to the signup page if there is an error
	}), function(req, res){
		console.log(JSON.stringify(req));
	});

	app.get('/logout', function(req, res) {
		req.logout();
		res.redirect('/login');
	});

	app.get('/home_admin', isLoggedIn, function(req, res){
		console.log(req.user.username)
		//req.locals.username = req.user.username;
		res.render('home_admin.swig', {'username': req.user.username});
	});
};

// route middleware to make sure
function isLoggedIn(req, res, next) {

	if (req.isAuthenticated())
		return next();

	res.redirect('/login');
}
