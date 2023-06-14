class Location < ActiveRecord::Base
  has_many :rentals
  has_many :owners, through: :rentals
end