# --------------------
# NOTE:
# This is an over-ride obtained here: http://mozmonkey.com/2013/12/loading-json-with-embedded-records-into-ember-data-1-0-0-beta/
# This is so that I can load in embedded JSON vs. sideloading
# as ember would hope for.
# Once this issue is resolved in active model serializer (https://github.com/rails-api/active_model_serializers/pull/493)
# I should update the rails API  to sideload and remove this code
# --------------------
# ApplicationSerializer = DS.RESTSerializer.extend
  
#   primaryKey: "id"

#   _generatedIds: 0

#   ###
#   Sideload a JSON object to the payload
#   ###
#   sideloadItem: (payload, type, item) ->
#     sideloadKey = type.typeKey.pluralize() # The key for the sideload array
#     sideloadArr = payload[sideloadKey] or [] # The sideload array for this item
#     primaryKey = Ember.get(this, "primaryKey") # the key to this record's ID
#     id = item[primaryKey]

#     # Missing an ID, generate one
#     if typeof id is "undefined"
#       id = "generated-" + (++@_generatedIds)
#       item[primaryKey] = id

#     # Don't add if already side loaded
#     return payload  unless sideloadArr.findBy("id", id) is `undefined`

#     # Add to sideloaded array
#     sideloadArr.push item
#     payload[sideloadKey] = sideloadArr
#     payload


#   ###
#   Extract relationships from the payload and sideload them. This function recursively
#   walks down the JSON tree
#   ###
#   extractRelationships: (payload, recordJSON, recordType) ->

#     # Loop through each relationship in this record type
#     recordType.eachRelationship ((key, relationship) ->
#       related = recordJSON[key] # The record at this relationship
#       type = relationship.type # belongsTo or hasMany
#       if related

#         # One-to-one
#         if relationship.kind is "belongsTo"

#           # Sideload the object to the payload
#           @sideloadItem payload, type, related

#           # Replace object with ID
#           recordJSON[key] = related.id

#           # Find relationships in this record
#           @extractRelationships payload, related, type

#         # Many
#         else if relationship.kind is "hasMany"

#           # Loop through each object
#           related.forEach ((item, index) ->

#             # Sideload the object to the payload
#             @sideloadItem payload, type, item

#             # Replace object with ID
#             related[index] = item.id

#             # Find relationships in this record
#             @extractRelationships payload, item, type
#             return
#           ), this
#       return
#     ), this
#     payload


#   ###
#   Overrided method
#   ###
#   normalizePayload: (type, payload) ->
#     typeKey = type.typeKey
#     typeKeyPlural = typeKey.pluralize()
#     payload = @_super(type, payload)

#     # Many items (findMany, findAll)
#     unless typeof payload[typeKeyPlural] is "undefined"
#       payload[typeKeyPlural].forEach ((item, index) ->
#         @extractRelationships payload, item, type
#         return
#       ), this

#     # Single item (find)
#     else @extractRelationships payload, payload[typeKey], type  unless typeof payload[typeKey] is "undefined"
#     payload

# module.exports = ApplicationSerializer