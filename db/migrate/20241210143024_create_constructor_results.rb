class CreateConstructorResults < ActiveRecord::Migration[8.0]
  def change
    create_table :constructor_results do |t|
      t.integer :constructor_results_id
      t.integer :race_id
      t.integer :constructor_id
      t.decimal :points
      t.string :status

      t.timestamps
    end
  end
end
