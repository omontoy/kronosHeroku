class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.integer :cursoid
      t.integer :IDEst
      t.integer :sesionPredicted

      t.timestamps
    end
  end
end
