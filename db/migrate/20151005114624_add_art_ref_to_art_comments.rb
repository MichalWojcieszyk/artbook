class AddArtRefToArtComments < ActiveRecord::Migration
  def change
    add_reference :art_comments, :art, index: true
    add_foreign_key :art_comments, :arts
  end
end
