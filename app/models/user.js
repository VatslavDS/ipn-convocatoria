var mongoose = require('mongoose');
var bcrypt   = require('bcrypt-nodejs');
var Schema = mongoose.Schema;

var UserIPNSchema = new Schema({
    username: String,
    password: String
});


// generating a hash
UserIPNSchema.methods.generateHash = function(password) {
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);

};

// checking if password is valid
UserIPNSchema.methods.validPassword = function(password) {
    return bcrypt.compareSync(password, this.password);
};


module.exports = mongoose.model('UserIPN', UserIPNSchema);
