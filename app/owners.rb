class Owner < ActiveRecord::Base
  has_many :rentals
  has_many :locations, through: :rentals
end