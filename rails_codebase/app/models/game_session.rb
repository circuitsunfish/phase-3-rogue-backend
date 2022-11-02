# frozen_string_literal:false

class GameSession < ApplicationRecord
  has_many :game_levels
end
