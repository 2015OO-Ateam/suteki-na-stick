class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer  :new_arrival, default: 0, null: false
      t.integer  :return_status, default: 0, null: false
      t.integer  :borrow_status, default: 0, null: false
      t.integer  :use_permission, default: 0, null: false
      t.integer  :necessary_of_scan, default: 0, null: false

      t.timestamps null: false
    end
  end
end
