class Update < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :dose_id
    add_column :doses, :ingrédient_id, :integer


  end
end
