class RemoveMeasurentUnitFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods , :measurent_unit
  end
end
