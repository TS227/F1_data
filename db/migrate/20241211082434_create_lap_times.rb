class CreateLapTimes < ActiveRecord::Migration[8.0]
  def change
    create_table :lap_times do |t|
      t.integer :race_id
      t.integer :driver_id
      t.integer :lap
      t.integer :position
      t.string :time
      t.integer :milliseconds

      t.timestamps
    end
  end
end
