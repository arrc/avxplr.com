class AddColumnForYearOnEngineModel < ActiveRecord::Migration[5.0]
  def change
    add_column :engine_models, :year, :integer
  end
end
