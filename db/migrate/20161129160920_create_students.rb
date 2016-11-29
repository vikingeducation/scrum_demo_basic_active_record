class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :grade
      t.integer :age

      t.index :first_name
      t.index :last_name
      t.index :grade
      t.index :age

      t.timestamps
    end
  end
end
