class RenameAllTittleToTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :portfolios, :tittle, "title"
    rename_column :blogs, :tittle, "title"
  end
end
