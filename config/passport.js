var LocalStrategy  = require('passport-local').Strategy;
var mongoose = require('mongoose');
var User = mongoose.model('UserIPN');


// expose this function to our app using module.exports
module.exports = function(passport) {

    // used to serialize the user for the session
    passport.serializeUser(function(user, done) {
        done(null, user.id);
    });

    // used to deserialize the user
    passport.deserializeUser(function(id, done) {
        User.findById(id, function(err, user) {
            done(err, user);
        });
    });

    passport.use('local_signup', new LocalStrategy({
        passReqToCallback : true // allows us to pass back the entire request to the callback
    },
    function(req, username, password, done) {
        User.findOne({"username": username}, function(err, user) {
            if (err){
		console.log("El error fue: " + err);
                return done(err);
	    } else if (user) {
		console.log("El user  fue: " + user);
                return done(null, false, 'signupMessage', 'That email is already taken.');
            } else {

				// if there is no user with that email
                // create the user
                var newUser  = new User();
		console.log("El user "+ newUser);
                newUser.username = username;
                newUser.password = newUser.generateHash(password); 

				// save the user
                newUser.save(function(err) {
                    if (err){
            		console.log("El error fue: " + err);
                        throw err;
		    }
                    return done(null, newUser);
                });
            }

        });

    }));

    passport.use('local-login', new LocalStrategy({
        passReqToCallback : true // allows us to pass back the entire request to the callback
    },
    function(req, username, password, done) { // callback with email and password from our form
        User.findOne({"username": username}, function(err, user) {
            if (err) {
		console.log('Error ' + err);
                return done(err);
	   }else if (!user) {
		console.log('No User');
                return done(null, false, 'loginMessage', 'No user found.'); // req.flash is the way to set flashdata using connect-flash
	   } else if (!user.validPassword(password)){
		console.log('Invalid password');
	   }
	    return done(null, user);
	});

    }));

};
