class AddAuthorRefToAuthorComments < ActiveRecord::Migration
  def change
    add_reference :author_comments, :author, index: true
    add_foreign_key :author_comments, :authors
  end
end
