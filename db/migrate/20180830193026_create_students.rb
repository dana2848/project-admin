class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :last_name
      t.text :first_name
      t.text :education

      t.timestamps
    end
  end
end