class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.integer :game_level_id
      t.integer :position_x
      t.integer :position_y
      t.text :custom_emoji
      t.integer :attack_stat
      t.integer :speed_stat
      t.integer :hp_stat
    end
  end
end
