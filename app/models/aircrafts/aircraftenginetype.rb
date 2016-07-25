class Aircraftenginetype < ApplicationRecord
  belongs_to :aircraft
  belongs_to :engine_type
end
