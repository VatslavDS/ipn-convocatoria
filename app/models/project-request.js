// Example model

var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

var CompetitorSchema = new Schema({
	nombre: String,
	comprobante : String
});

var ReferencesSchema = new Schema({
	referencia: String
});

var DocumentSchema = new Schema({
	antecedentes: String,
	justificacion: String,
	justificacion: String,
	metodologia: String,
	propuesta: String,
	resultados: String,
	conclusiones: String,
	referencias: [ReferencesSchema],
	url_documento : String,
	url_anexo : String
});

var RequestSchema = new Schema({
	nombre_proyecto : String,
	institucion : String,
	categoria : String,
	eje_tematico : String,
	participantes: [CompetitorSchema],
	resumen: String,
	documento: DocumentSchema,
        url_documento : String,
	url_anexo : String
});

mongoose.model('Requests', RequestSchema);
