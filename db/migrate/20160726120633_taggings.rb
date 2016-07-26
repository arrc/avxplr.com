class Taggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.references :shot, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
