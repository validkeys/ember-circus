module.exports = DS.Model.extend
  day:          DS.attr "string"
  time_of_day:  DS.attr "string"
  lineup:       DS.belongsTo "lineup"
  