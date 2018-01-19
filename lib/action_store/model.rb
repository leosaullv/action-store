module ActionStore
  module Model
    extend ActiveSupport::Concern

    included do
      # puts "Initialize ActionStore::Model"
      belongs_to :target, polymorphic: true
      belongs_to :user,   polymorphic: true
      belongs_to :note,   polymorphic: true
    end
  end
end
