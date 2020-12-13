class AddColumnsArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :name, :string
    add_column :articles, :type, :string
    add_column :articles, :price, :string
    add_column :articles, :remarks, :string

  end
end
