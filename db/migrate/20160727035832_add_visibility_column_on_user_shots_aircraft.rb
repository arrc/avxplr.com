class AddVisibilityColumnOnUserShotsAircraft < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_active, :boolean, default: true
    add_column :shots, :is_public, :boolean, default: true
    add_column :aircrafts, :is_public, :boolean, default: true
  end
end
