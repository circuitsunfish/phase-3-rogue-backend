class CreateEntityTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :entity_types do |t|
      t.string :entity_type_name
      t.boolean :can_move
      t.boolean :can_attack
      t.boolean :is_player
      t.boolean :dead_player
      t.boolean :ends_level
      t.text :default_emoji
      t.integer :default_attack
      t.integer :default_speed
      t.integer :default_hp
    end
  end
end