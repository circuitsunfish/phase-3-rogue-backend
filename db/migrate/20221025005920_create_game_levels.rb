class CreateGameLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :game_levels do |t|
      t.text :level_name
      t.integer :game_session_id
      t.text :map_data 
      #map data will most likely be in string using JSON for storing
    end
  end
end
