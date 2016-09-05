class RemoveUniqnessConstraintFromFav < ActiveRecord::Migration[5.0]
  def change
    remove_index :favorites, [:favoritable_id, :favoritable_type]
    add_index :favorites, [:favoritable_id, :favoritable_type]
    # remove_index :favorites, :favoritable_id
    # remove_index :favorites, :favoritable_type
    # add_index :favorites, :favoritable_id
    # add_index :favorites, :favoritable_type
  end
end
