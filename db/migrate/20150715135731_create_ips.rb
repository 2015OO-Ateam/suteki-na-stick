class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :number, unique: true
      t.integer :usability, null: false, default: 1
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
