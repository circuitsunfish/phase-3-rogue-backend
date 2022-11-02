# frozen_string_literal:false

class Entity < ApplicationRecord
  belongs_to :game_level
  has_many :entity_have_type
  has_many :entity_types, through: :entity_have_type

  # ##LEGACY SINATRA ZONE###
  def getPlayerEntityTypesForSession
    EntityHaveType.create(entity_id: id, entity_type_id: 1)
  end

  def getClownEntityTypesForSession
    EntityHaveType.create(entity_id: id, entity_type_id: 2)
  end

  def getBedEntityTypesForSession
    EntityHaveType.create(entity_id: id, entity_type_id: 3)
  end

  def getBonesEntityTypesForSession
    EntityHaveType.create(entity_id: id, entity_type_id: 4)
  end

  def self.api_getSavedPlayersForSession
    all.where('game_level_id NOT NULL AND position_x NOT NULL AND position_y NOT NULL')
  end

  def self.api_deleteSavedPlayersOnSession(session_id)
    to_delete = Entity.api_getSavedPlayersForSession.find_by(game_level_id: session_id)
    puts 'will destroy'
    puts to_delete
    to_delete.destroy
    puts 'destroyed'
  end
end
