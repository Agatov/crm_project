class CreateClients < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.integer :status_id
      t.integer :user_id
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
