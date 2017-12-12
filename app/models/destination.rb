class Destination < ApplicationRecord
  has_many :reviews
  validates :city, :presence => true
end
