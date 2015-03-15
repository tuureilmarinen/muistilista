class CreateTaskToGroups < ActiveRecord::Migration
  def change
    create_table :task_to_groups do |t|
      t.integer :task_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
