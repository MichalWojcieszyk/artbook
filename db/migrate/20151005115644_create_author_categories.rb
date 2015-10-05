class CreateAuthorCategories < ActiveRecord::Migration
  def change
    create_table :author_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
