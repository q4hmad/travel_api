class Destination < ApplicationRecord
  has_many :reviews
  validates :city, :presence => true


    def self.search(x)
      where("city ILIKE ?", "%#{x}%")
    end

    # scope :search, ->(country) {(
    # where("country ilike ?", country )
    # )}


end
