class CreateDrivers < ActiveRecord::Migration[8.0]
  def change
    create_table :drivers do |t|
      t.integer :driver_id
      t.string :driver_ref
      t.integer :number
      t.string :code
      t.string :forename
      t.string :surname
      t.date :dob
      t.string :nationality
      t.string :url

      t.timestamps
    end
  end
end
