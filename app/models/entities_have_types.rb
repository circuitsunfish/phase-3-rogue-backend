class EntitiesHaveType < ActiveRecord::Base
    belongs_to :entity 
    belongs_to :entity_type
end