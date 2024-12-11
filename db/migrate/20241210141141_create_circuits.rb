class CreateCircuits < ActiveRecord::Migration[8.0]
  def change
    create_table :circuits do |t|
      t.string :circuit_id, null: false, index: { unique: true }
      t.string :circuit_ref, null: false
      t.string :name, null: false
      t.string :location, null: false
      t.string :country, null: false
      t.decimal :lat, precision: 10, scale: 7, null: false
      t.decimal :lng, precision: 10, scale: 7, null: false
      t.integer :alt
      t.string :url

      t.timestamps
    end
  end
end
