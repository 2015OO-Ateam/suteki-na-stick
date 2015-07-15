class Resource < ActiveRecord::Base
  #新着情報　既読　未読
  enum new_arrivals: {old: 0, newly: 1}
  #返却状況　未申請　申請中　返却済
  enum return_status: {unapplied: 0, applying: 1, returned: 2}
  #借用状況　未借用　借用中
  enum borrow_status: {not_borrowing: 0, borrowing: 1}
  #利用許可種別　不許可　許可
  enum use_permission: {not_arrowed: 0, arrowed: 1}

  #スキャン用不要
  enum necessary_of_scan: {unnecessary: 0, necessary: 1}
  def self.search(search)
    Resource.where(['borrow_status LIKE ?', "%#{search}%"])
  end
end
