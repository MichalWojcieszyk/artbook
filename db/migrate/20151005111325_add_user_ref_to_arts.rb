class AddUserRefToArts < ActiveRecord::Migration
  def change
    add_reference :arts, :user, index: true
    add_foreign_key :arts, :users
  end
end
