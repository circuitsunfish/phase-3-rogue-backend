class GameSession < ActiveRecord::Base
    has_many :entities_have_types
end