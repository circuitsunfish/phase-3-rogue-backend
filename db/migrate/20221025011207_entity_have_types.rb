class EntityHaveTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :entities_have_types do |t|
      t.integer :entity_id
      t.integer :entity_types_id
    end
  end
end
