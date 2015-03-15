class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :completed
      t.integer :priority
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
