module.exports = DS.Model.extend
  themeable_type: DS.attr "string"
  themeable_id:   DS.attr "number"
  theme:          DS.belongsTo "theme"