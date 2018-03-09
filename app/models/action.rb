# Auto generate with action-store gem.
class Action < ActiveRecord::Base
  include ActionStore::Model
  serialize :target_serialize
end