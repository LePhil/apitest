class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.text :description
      t.integer :age

      t.timestamps null: false
    end
  end
end
