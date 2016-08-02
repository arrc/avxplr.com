class ChangeColumnNameForWingArea < ActiveRecord::Migration[5.0]
  def change
    rename_column :aircrafts, :wind_area, :wing_area
  end
end
