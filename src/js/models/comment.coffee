module.exports = DS.Model.extend
  message:          DS.attr "string"
  commentable_id:   DS.attr "number"
  commentable_type: DS.attr "string"
  created_at:       DS.attr "date"
  user:             DS.belongsTo "user"