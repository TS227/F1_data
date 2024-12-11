class CreateQualifications < ActiveRecord::Migration[8.0]
  def change
    create_table :qualifications do |t|
      t.integer :qualify_id
      t.integer :race_id
      t.integer :driver_id
      t.integer :constructor_id
      t.integer :number
      t.integer :position
      t.string :q1
      t.string :q2
      t.string :q3

      t.timestamps
    end
  end
end
