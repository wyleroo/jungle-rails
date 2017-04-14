class Review < ActiveRecord::Base

  has_one :users
  belongs_to :products

  validates :description, presence: true
  validates :rating, presence: true

end
