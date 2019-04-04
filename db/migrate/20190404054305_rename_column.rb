class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, "ingrédient_id", "ingredient_id"

  end
end
