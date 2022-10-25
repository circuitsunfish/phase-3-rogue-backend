class GameLevel < ActiveRecord::Base
    has_many :entities
    belongs_to :game_session
end