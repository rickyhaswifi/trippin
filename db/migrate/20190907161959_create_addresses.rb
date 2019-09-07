class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :city
      t.integer :state
      t.integer :zip
      t.integer :location_id
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
