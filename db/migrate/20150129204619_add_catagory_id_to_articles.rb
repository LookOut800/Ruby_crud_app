class AddCatagoryIdToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :catagory, index: true
    add_foreign_key :articles, :catagories
  end
end
