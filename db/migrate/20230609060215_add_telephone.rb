class AddTelephone < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :Telephone_no, :integer
  end
end
