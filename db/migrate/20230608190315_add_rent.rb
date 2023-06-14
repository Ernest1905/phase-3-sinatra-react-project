class AddRent < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :rent_in_dollars, :integer
  end
end
