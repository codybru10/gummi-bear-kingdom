class Review < ActiveRecord::Base
  belongs_to :product
  validates :review, :author, presence: true
end
