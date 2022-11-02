class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :custom_emoji
      t.integer :game_level_id
      t.integer :position_x
      t.integer :position_y
      t.integer :attack_stat
      t.integer :speed_stat
      t.integer :hp_stat

      t.timestamps
    end
  end
end
