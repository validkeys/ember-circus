module.exports = DS.Model.extend
  character:  DS.attr "string"
  order:      DS.attr "number"
  created_at: DS.attr "date"
  person:     DS.belongsTo "person"
  medium:     DS.belongsTo "medium"
  