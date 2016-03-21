class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :category
      t.references :user
      t.string :title
      t.string :price
      t.string :description
      t.string :email

      t.timestamps null: false
    end
  end
end
