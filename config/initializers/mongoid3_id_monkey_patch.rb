module Mongoid
  module Serialization
    def serializable_hash_with_id(options = nil)
      json = serializable_hash_without_id options
      json['id'] = json['_id'] if json.has_key? '_id'
      json.delete '_id'
      json
    end
    alias_method_chain :serializable_hash, :id
  end
end
