class AddSlugToAircrafts < ActiveRecord::Migration[5.0]
  def change
    add_column :aircrafts, :slug, :string
    add_index :aircrafts, :slug, unique: true
  end
end
