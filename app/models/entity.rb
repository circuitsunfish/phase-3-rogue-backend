class Entity < ActiveRecord::Base
    belongs_to :game_level
    has_many :entities_have_types
    has_many :entity_types, through: :entities_have_types

    def getPlayerEntityTypesForSession
        this_entity_has_type = EntitiesHaveType.create(entity_id: self.id, entity_type_id: 1)
    end

    def getClownEntityTypesForSession
        this_entity_has_type = EntitiesHaveType.create(entity_id: self.id, entity_type_id: 2)
    end

    def getBedEntityTypesForSession
        this_entity_has_type = EntitiesHaveType.create(entity_id: self.id, entity_type_id: 3)
    end

    def getBonesEntityTypesForSession
        this_entity_has_type = EntitiesHaveType.create(entity_id: self.id, entity_type_id: 4)
    end

    def self.api_getSavedPlayersForSession
        self.all.where("game_level_id NOT NULL AND position_x NOT NULL AND position_y NOT NULL")
    end

end