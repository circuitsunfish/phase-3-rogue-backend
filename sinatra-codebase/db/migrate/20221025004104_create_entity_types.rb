class CreateEntityTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :entity_types do |t|
      t.string :entity_type_name
      t.integer :can_move
      t.integer :can_attack
      t.integer :is_player
      t.integer :dead_player
      t.integer :ends_level
      t.text :default_emoji
      t.integer :default_attack
      t.integer :default_speed
      t.integer :default_hp
    end
  end
end