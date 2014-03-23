module.exports = DS.Model.extend
  department: DS.attr "string"
  job:        DS.attr "string"
  person:     DS.belongsTo "person"
  medium:     DS.belongsTo "medium"