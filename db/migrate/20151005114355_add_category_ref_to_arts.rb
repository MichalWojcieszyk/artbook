class AddCategoryRefToArts < ActiveRecord::Migration
  def change
    add_reference :arts, :category, index: true
    add_foreign_key :arts, :categories
  end
end
