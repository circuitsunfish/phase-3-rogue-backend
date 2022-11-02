class CreateGameLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :game_levels do |t|
      t.string :level_name
      t.string :map_data
      t.integer :game_session_id

      t.timestamps
    end
  end
end
