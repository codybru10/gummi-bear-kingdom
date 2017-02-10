class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :origin, presence: true
  validates_uniqueness_of :name

end
