class Ingredient < ApplicationRecord
  has_and_belongs_to_many :doses

  validates :name, presence: true, uniqueness: true
end
