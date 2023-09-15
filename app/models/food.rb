class Food < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user

  validates :name, :measurement_unit, :price, :quantity, presence: true
end
