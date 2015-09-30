class CreateAuthorComments < ActiveRecord::Migration
  def change
    create_table :author_comments do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
