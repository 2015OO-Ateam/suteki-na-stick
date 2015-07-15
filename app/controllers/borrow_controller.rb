class BorrowController < ApplicationController
  def index
    @lab_pcs = LabPc.all
    @softwares = Software.all
  end
end
