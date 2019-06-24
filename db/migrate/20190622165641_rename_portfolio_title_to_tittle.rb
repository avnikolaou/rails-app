class RenamePortfolioTitleToTittle < ActiveRecord::Migration[5.2]
  def change
    rename_column :portfolios, :title, "tittle"
  end
end
