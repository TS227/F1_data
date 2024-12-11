class CreatePitStops < ActiveRecord::Migration[8.0]
  def change
    create_table :pit_stops do |t|
      t.integer :race_id
      t.integer :driver_id
      t.integer :stop
      t.integer :lap
      t.string :time
      t.decimal :duration
      t.integer :milliseconds

      t.timestamps
    end
  end
end
