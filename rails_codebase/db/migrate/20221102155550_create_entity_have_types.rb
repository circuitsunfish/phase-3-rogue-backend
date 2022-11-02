class CreateEntityHaveTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :entity_have_types do |t|
      t.integer :entity_id
      t.integer :entity_type_id

      t.timestamps
    end
  end
end
