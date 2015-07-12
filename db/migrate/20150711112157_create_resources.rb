class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer  :new_arrival, default: 0, null: false, limit:1
      t.integer  :return_status, default: 0, null: false, limit:2
      t.integer  :borrow_status, default: 0, null: false, limit:1
      t.integer  :use_permission, default: 0, null: false, limit:1
      t.integer  :necessary_of_scan, default: 0, null: false, limit:1

      t.timestamps null: false
    end
  end
end
