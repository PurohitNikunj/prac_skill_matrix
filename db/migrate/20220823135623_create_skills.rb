class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :skill
      t.belongs_to :tech_stack, foreign_key: true

      t.timestamps
    end
  end
end
