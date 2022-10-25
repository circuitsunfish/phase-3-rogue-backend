class Entity < ActiveRecord::Base
    belongs_to :game_level
    has_many :entity_types, through: entities_have_types
end