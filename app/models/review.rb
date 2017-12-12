class Review < ApplicationRecord
  belongs_to :destination
  validates :content_body, :presence => true
  validates :rating, :presence => true
  validates :author, :presence => true

  def self.search(x)
      where("content_body ILIKE ? OR rating ILIKE ? OR author OR destination_id", "%#{x}%", "%#{x}%", "%#{x}%", "%#{x}%")
  end

end
