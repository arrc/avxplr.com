class Aircraftenginemodel < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_model
end
