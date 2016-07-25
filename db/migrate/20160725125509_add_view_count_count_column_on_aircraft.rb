class AddViewCountCountColumnOnAircraft < ActiveRecord::Migration[5.0]
  def change
    add_column :aircrafts, :view_count, :integer
  end
end
