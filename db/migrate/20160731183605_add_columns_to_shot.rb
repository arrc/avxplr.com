class AddColumnsToShot < ActiveRecord::Migration[5.0]
  def change
    add_column :shots, :image, :string
    add_column :shots, :shot_type_cd, :integer
    add_column :shots, :video, :text
    add_column :shots, :source, :string
  end
end
