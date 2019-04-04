class AddSecondColumn < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :doses, :ingredients
  end
end
