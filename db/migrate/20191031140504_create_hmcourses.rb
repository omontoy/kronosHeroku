class CreateHmcourses < ActiveRecord::Migration[5.0]
  def change
    create_table :hmcourses do |t|
      t.integer :cursoid
      t.string :nombre
      t.string :sesion
      t.integer :gruposPredicted

      t.timestamps
    end
  end
end
