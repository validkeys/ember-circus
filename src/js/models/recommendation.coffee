module.exports = DS.Model.extend
  created_at: DS.attr "date"
  user:       DS.belongsTo "user"
  lineup:     DS.belongsTo "lineup"
  medium:     DS.belongsTo "medium"