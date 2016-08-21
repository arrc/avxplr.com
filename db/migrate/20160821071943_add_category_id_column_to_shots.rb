class AddCategoryIdColumnToShots < ActiveRecord::Migration[5.0]
  def change
    add_reference :shots, :shot_category, index: true
  end
end
