class RemoveTitleFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :title, :string
  end
end
