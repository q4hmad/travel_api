class Review < ApplicationRecord
  belongs_to :destination
  validates :content_body, :presence => true
  validates :rating, :presence => true
  validates :author, :presence => true
end
