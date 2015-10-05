class AddUserRefToArtComments < ActiveRecord::Migration
  def change
    add_reference :art_comments, :user, index: true
    add_foreign_key :art_comments, :users
  end
end
