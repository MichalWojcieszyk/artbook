class CreateArtComments < ActiveRecord::Migration
  def change
    create_table :art_comments do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
