class RemoveImgurlFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :imgurl, :string
  end
end
