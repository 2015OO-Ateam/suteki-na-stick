class AddStudentnumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :student_number, :string
    add_index :users, :student_number, unique: true
  end
end
