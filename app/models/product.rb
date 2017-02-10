class Product < ActiveRecord::Base
  validates :name, :cost, :origin, presence: true
  validates_uniqueness_of :name

end
