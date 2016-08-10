class ForeingkeyOnTypesAndAircraftsForCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :types, :category
    add_reference :aircrafts, :category
  end
end
