class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :dept_name
      t.integer :team_manager_id
      
      t.timestamps
    end
  end
end
