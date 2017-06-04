class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :size
      t.string :species
      t.string :breed, null: true
      t.date :birth_date
      t.timestamps
    end

    add_reference :animals, :user, foreign_key: true
  end
end
