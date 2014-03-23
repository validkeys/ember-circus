module.exports = DS.Model.extend
  lineup:             DS.belongsTo "lineup"
  weather_condition:  DS.belongsTo "weather_condition"
  created_at:         DS.attr "date"