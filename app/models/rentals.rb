class Rental < ActiveRecord::Base
  belongs_to :owner
  belongs_to :location
  attribute :image_link, :string

end