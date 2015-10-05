class AddAuthorCategoryRefToAuthor < ActiveRecord::Migration
  def change
    add_reference :authors, :author_category, index: true
    add_foreign_key :authors, :author_categories
  end
end
