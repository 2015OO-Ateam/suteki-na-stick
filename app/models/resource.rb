class Resource < ActiveRecord::Base
  has_one :ip
  has_one :user

  accepts_nested_attributes_for :ip
  accepts_nested_attributes_for :user

  #attr_accessible :room_id, :new_arrival, :return_status, :borrow_status, :necessary_of_scan, :os
  #attr_accessible :ips_attributes
  #attr_accessible :rooms_attributes

  #新着情報　既読　未読
  enum new_arrival: {old: 0, newly: 1}  #new_arrivals になってたのをなおした
  #返却状況　未申請　申請中　返却済
  enum return_status: {unapplied: 0, applying: 1, returned: 2}
  #借用状況　未借用　借用中
  enum borrow_status: {not_borrowing: 0, borrowing: 1}
  #利用許可種別　不許可　許可
  enum use_permission: {not_allowed: 0, allowed: 1}

  #スキャン用不要
  enum necessary_of_scan: {unnecessary: 0, necessary: 1}
  def self.search(search)
    Resource.where(['borrow_status LIKE ?', "%#{search}%"])
  end
end
