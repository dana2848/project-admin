class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.text :first_name
      t.text :last_name
      t.integer :age
      t.integer :salary
      t.text :education

      t.timestamps
    end
  end
end
