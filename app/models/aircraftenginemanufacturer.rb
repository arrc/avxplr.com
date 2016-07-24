class Aircraftenginemanufacturer < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_manufacturer
end
