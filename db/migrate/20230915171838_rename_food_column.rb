class RenameFoodColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column(:foods, :measurent_unit, :measurement_unit)
  end
end
