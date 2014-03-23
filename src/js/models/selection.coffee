module.exports = DS.Model.extend
  created_at:     DS.attr "date"
  user:        DS.belongsTo "user"
  medium:         DS.belongsTo "medium"
  lineup:      DS.belongsTo "lineup"