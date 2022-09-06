class CreateTechStacks < ActiveRecord::Migration[7.0]
  def change
    create_table :tech_stacks do |t|
      t.string :tech_stack

      t.timestamps
    end
  end
end
