class AddCodeToConstruction < ActiveRecord::Migration[5.0]
  def change
    add_column :constructions, :code, :string
  end
end
