class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :chefs, :username, :chefname
  end
end
