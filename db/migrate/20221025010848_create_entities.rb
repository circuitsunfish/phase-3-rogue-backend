class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.integer :game_level_id
      t.text :position
      t.text :custom_emoji
      t.integer :attack_stat
      t.integer :speed_stat
      t.integer :hp_stat
    end
  end
end
