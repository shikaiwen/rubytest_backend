class UpdateColumnArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :cate, :string
  end
end
