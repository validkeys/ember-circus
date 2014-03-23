module.exports = DS.Model.extend
  name:         DS.attr "string"
  profile_path: DS.attr "string"
  api_id:       DS.attr "number"
  created_at:   DS.attr "date"
  characters:   DS.hasMany "character"
  crew_members: DS.hasMany "crew_member"