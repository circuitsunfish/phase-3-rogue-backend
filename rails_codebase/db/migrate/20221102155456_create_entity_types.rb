class CreateEntityTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :entity_types do |t|
      t.string :entity_type_name
      t.string :default_emoji
      t.integer :can_move
      t.integer :can_attack
      t.integer :is_player
      t.integer :dead_player
      t.integer :ends_level
      t.integer :default_attack
      t.integer :default_speed
      t.integer :default_hp

      t.timestamps
    end
  end
end
