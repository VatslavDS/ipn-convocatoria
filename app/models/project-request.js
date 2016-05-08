// Example model

var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

var CompetitorSchema = new Schema({
	nombre: {
	   type: String,
	   required: true,
	   min: 2,
	   max: 60
	},
	categoria: {
	    type: String,
	    required : true
	},
	comprobante : {
	    type: String,
	    required: true
	},
	institucion: {
	    type: String
	},
	plantel : {
	    type: String,
	    required: true
	}
});

var ReferencesSchema = new Schema({
	referencia: {
	    type: String,
	    required: true
	}
});

var DocumentSchema = new Schema({
	antecedentes: {
	    type: String
	},
	justificacion: {
	    type: String
	},
	metodologia: {
	    type: String
	},
	propuesta: {
	    type: String
	},
	resultados: {
	    type: String
	},
	conclusiones: {
	    type: String
	},
        archivo_proyecto:  {
            type: String
        },
	referencias: [ReferencesSchema]
});

var RequestSchema = new Schema({
	nombre_del_proyecto : {
	    type: String,
	    required: true
	},
	eje_tematico : {
	    type: String,
	    required: true
	},
	participantes: [CompetitorSchema],
	resumen: {
	    type: String,
	    required: true
	},
	documento: [DocumentSchema],
        url_documento : {
	    type: String
	},
	url_anexo : {
	    type: String
	}
});

mongoose.model('Request', RequestSchema);
