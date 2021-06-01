class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.integer :grade, null: false
      t.text :comment

      t.timestamps
    end
  end
end
