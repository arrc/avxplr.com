class AddSlugToShots < ActiveRecord::Migration[5.0]
  def change
    add_column :shots, :slug, :string
    add_index :shots, :slug, unique: true
  end
end
