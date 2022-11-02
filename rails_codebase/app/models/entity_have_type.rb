# frozen_string_literal:false

class EntityHaveType < ApplicationRecord
  belongs_to :entity
  belongs_to :entity_type
end
