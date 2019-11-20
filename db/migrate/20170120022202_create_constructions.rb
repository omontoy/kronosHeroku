class CreateConstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :constructions do |t|
      t.string :name
      t.string :image_url
      t.integer :capacity
      t.string :city
      t.text :description

      t.timestamps
    end
  end
end
