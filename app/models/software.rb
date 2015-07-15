class Software < Resource
  def self.search(search)
    Software.where(['borrow_status LIKE ?', "%#{search}%"])
  end
end
