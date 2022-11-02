# frozen_string_literal:false

class EntityType < ApplicationRecord
  has_many :entity_have_type
  has_many :entities, through: :entity_have_type
end
