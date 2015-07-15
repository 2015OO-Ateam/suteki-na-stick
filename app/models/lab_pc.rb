class LabPc < Resource
  def self.search(search)
    LabPc.where(['borrow_status LIKE ?', "%#{search}%"])
  end
end
