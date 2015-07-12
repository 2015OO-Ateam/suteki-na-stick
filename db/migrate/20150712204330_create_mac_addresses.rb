class CreateMacAddresses < ActiveRecord::Migration
  def change
    create_table :mac_addresses do |t|
      t.string :address
      t.string :type
      t.timestamps null: false
      t.integer :printer_id
      t.integer :router_id
    end
  end
end
