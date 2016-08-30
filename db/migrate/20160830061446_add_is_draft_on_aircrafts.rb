class AddIsDraftOnAircrafts < ActiveRecord::Migration[5.0]
  def change
    add_column :aircrafts, :is_draft, :boolean
  end
end
