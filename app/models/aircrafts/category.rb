class Category < ApplicationRecord
  has_many :aircrafts
  has_many :types
end
