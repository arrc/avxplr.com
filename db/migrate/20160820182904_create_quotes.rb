class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :cite

      t.timestamps
    end
  end
end
