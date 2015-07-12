class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :room, :int
    add_column :users, :status, :int
    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :title
    add_index :users, :room
    add_index :users, :status
  end
end
