class CreateRentalsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.references :location, foreign_key: true
      t.references :owner, foreign_key: true
      t.integer :number_of_rooms
      t.string :image_link
      t.timestamps
    end
  end
end
