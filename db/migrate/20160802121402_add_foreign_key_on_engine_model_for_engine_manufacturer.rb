class AddForeignKeyOnEngineModelForEngineManufacturer < ActiveRecord::Migration[5.0]
  def change
    add_reference :engine_models , :engine_manufacturer, index: true, foreign_key:true
  end
end
