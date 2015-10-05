class AddUserRefToAuthorComments < ActiveRecord::Migration
  def change
    add_reference :author_comments, :user, index: true
    add_foreign_key :author_comments, :users
  end
end
