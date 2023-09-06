class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.datetime :date_time
      t.string :location
      t.string :party_size
      t.integer :party_size
      t.string :special_occasion
      t.boolean :allergy
      t.string :note

      t.timestamps
    end
  end
end
