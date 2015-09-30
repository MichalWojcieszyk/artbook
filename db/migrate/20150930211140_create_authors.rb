class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :rating
      t.date :birth_date
      t.date :die_date
      t.string :hometown
      t.string :photo
      t.text :biography

      t.timestamps null: false
    end
  end
end
