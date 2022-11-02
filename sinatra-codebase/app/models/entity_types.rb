class EntityType < ActiveRecord::Base
    has_many :entities_have_types
    has_many :entities, through: :entities_have_types
end