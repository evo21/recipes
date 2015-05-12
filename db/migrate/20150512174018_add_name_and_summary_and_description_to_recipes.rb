class AddNameAndSummaryAndDescriptionToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :summary, :text
    add_column :recipes, :description, :text
  end
end
