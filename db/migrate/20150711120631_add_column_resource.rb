class AddColumnResource < ActiveRecord::Migration
  def change
    #Lab PC
    #add_column :resources, :borrowing_pc_id, :integer
    add_column :resources, :name, :string #機種名,ソフトウェア名
    add_column :resources, :machine_name, :string #マシン名
    add_column :resources, :pc_type, :string #デスクトップ or ラップトップ
    add_column :resources, :cpu, :string
    add_column :resources, :memory, :integer
    add_column :resources, :hdd, :integer
    add_column :resources, :scan_date, :datetime
    add_column :resources, :acquisition_date, :datetime #購入日時
    add_column :resources, :os, :string
    add_column :resources, :room, :integer
    #add_column :resources, :necessary_of_scan, :integer #スキャン必要性
    #ソフトウェア
    #add_column :resources, :software_id, :integer
    add_column :resources, :limit, :integer #使用上限数
    #STI
    add_column :resources, :type, :string
  end
end
