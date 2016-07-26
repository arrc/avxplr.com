class CreateShots < ActiveRecord::Migration[5.0]
  def change
    create_table :shots do |t|
      t.references :user, foreign_key: true
      t.text :caption
      t.integer :view_count
      t.references :aircraft, foreign_key: true

      t.timestamps
    end
  end
end
