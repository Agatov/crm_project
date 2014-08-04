class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_group_id
      t.integer :client_id
      t.integer :user_id
      t.string :name
      t.text :content
      t.datetime :deadline

      t.timestamps
    end
  end
end
