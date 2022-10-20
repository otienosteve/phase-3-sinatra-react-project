class Departments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :head
      t.string :name 
      t.integer :employee_no
    end
    
  end
end
