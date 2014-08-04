class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :color
      t.boolean :is_service, default: 0

      t.timestamps
    end
  end
end
