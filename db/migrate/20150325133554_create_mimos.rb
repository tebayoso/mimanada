class CreateMimos < ActiveRecord::Migration
  def change
    create_table :mimos do |t|
      t.references :user
      t.string :title
      t.integer :mimo_case
      t.string :description
      t.string :race
      t.integer :size
      t.string :city
      t.string :country
      t.string :state
      t.string :street
      t.string :coordinates
      t.string :name
      t.string :color1
      t.string :color2
      t.string :gender
      t.integer :age

      t.timestamps null: false
    end
  end
end
