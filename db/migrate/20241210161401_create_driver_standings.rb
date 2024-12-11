class CreateDriverStandings < ActiveRecord::Migration[8.0]
  def change
    create_table :driver_standings do |t|
      t.integer :driver_standings_id
      t.integer :race_id
      t.integer :driver_id
      t.decimal :points
      t.integer :position
      t.string :position_text
      t.integer :wins

      t.timestamps
    end
  end
end
