class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Position
      t.string :name
      t.string :gakuseki
      t.string :password
      t.integer :cabin
      t.integer :license

      t.timestamps null: false
    end
  end
end
