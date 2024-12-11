class CreateConstructors < ActiveRecord::Migration[8.0]
  def change
    create_table :constructors do |t|
      t.integer :constructor_id
      t.string :constructor_ref
      t.string :name
      t.string :nationality
      t.string :url

      t.timestamps
    end
  end
end
