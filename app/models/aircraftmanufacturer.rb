class Aircraftmanufacturer < ApplicationRecord
  belongs_to :aircraft
  belongs_to :manufacturer
end
