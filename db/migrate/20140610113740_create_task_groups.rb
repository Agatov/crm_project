class CreateTaskGroups < ActiveRecord::Migration
  def change
    create_table :task_groups do |t|
      t.integer :account_id
      t.string :name

      t.timestamps
    end
  end
end
