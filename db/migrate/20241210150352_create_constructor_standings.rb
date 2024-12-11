class CreateConstructorStandings < ActiveRecord::Migration[8.0]
  def change
    create_table :constructor_standings do |t|
      t.integer :constructor_standings_id
      t.integer :race_id
      t.integer :constructor_id
      t.decimal :points
      t.integer :position
      t.string :position_text
      t.integer :wins

      t.timestamps
    end
  end
end
