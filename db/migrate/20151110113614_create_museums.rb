class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :name
      t.string :location
      t.string :address
      t.date :start_date

      t.timestamps null: false
    end
  end
end
