class RemoveUserIdColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipe_foods , :recipe_id
    remove_column :recipe_foods , :food_id
    remove_column :recipes , :user_id
    remove_column :foods , :user_id
  end
end
