class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.no :string
      t.string :name
      t.string :price
      t.type :string
      t.remarks :string
      t.timestamps
    end
  end
end
