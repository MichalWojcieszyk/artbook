class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.date :production_date
      t.string :author
      t.string :style
      t.string :image
      t.string :owner
      t.string :location
      t.integer :rating

      t.timestamps null: false
    end
  end
end
