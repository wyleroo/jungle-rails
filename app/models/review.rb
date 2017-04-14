class Review < ActiveRecord::Base

  belongs_to :users
  belongs_to :products

  validates :description, presence: true
  validates :rating, presence: true

end
