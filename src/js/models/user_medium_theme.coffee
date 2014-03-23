module.exports = DS.Model.extend
  user:       DS.belongsTo "user"
  medium:     DS.belongsTo "medium"
  theme:      DS.belongsTo "theme"
  created_at: DS.attr "date"
  updated_at: DS.attr "date"