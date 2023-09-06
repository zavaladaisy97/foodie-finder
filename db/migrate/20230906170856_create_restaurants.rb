class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :string
      t.string :phone_number
      t.string :cuisine_type
      t.string :cost
      t.decimal :rating, precision: 2, scale: 1
      t.string :profile_pic

      t.timestamps
    end
  end
end
