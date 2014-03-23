module.exports = DS.Model.extend
  state:          DS.attr "string"
  created_at:     DS.attr "date"
  updated_at:     DS.attr "string"
  rating:         DS.attr "number"
  viewing_source: DS.attr "string"
  user:           DS.belongsTo "user"
  medium:         DS.belongsTo "medium"