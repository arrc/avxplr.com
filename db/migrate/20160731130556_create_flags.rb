class CreateFlags < ActiveRecord::Migration[5.0]
  def change
    create_table :flags do |t|
      t.text :message
      t.references :user, foreign_key: true
      t.references :flagable, polymorphic: true

      t.timestamps
    end
  end
end
