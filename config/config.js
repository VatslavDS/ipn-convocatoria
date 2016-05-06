var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'ipn-convocatoria'
    },
    port: process.env.PORT || 3009,
    db: 'mongodb://localhost/ipn-convocatoria-development'
  },

  test: {
    root: rootPath,
    app: {
      name: 'ipn-convocatoria'
    },
    port: process.env.PORT || 3000,
    db: 'mongodb://localhost/ipn-convocatoria-test'
  },

  production: {
    root: rootPath,
    app: {
      name: 'ipn-convocatoria'
    },
    port: process.env.PORT || 3000,
    db: 'mongodb://localhost/ipn-convocatoria-production'
  }
};

module.exports = config[env];
