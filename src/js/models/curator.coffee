module.exports = DS.Model.extend
  accepted:   DS.attr "boolean"
  created_at: DS.attr "date"
  owner:      DS.attr "boolean"
  lineup:     DS.belongsTo "lineup"
  user:       DS.belongsTo "user"