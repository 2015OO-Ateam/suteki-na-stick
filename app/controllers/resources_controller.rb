class ResourcesController < ApplicationController
  before_action :authenticate_user!
  def index
    @lab_pcs = LabPc.all
    @softwares = Software.all
    @printers = Printer.all
    @routers = Router.all
      if params[:search]
        @software = Software.search(params[:search]).order("borrow_status DESC")
      else
        @software = Software.all.order('borrow_status DESC')
      end

      if params[:search]
        @lab_pc = LabPc.search(params[:search]).order("borrow_status DESC")
      else
        @lab_pc = LabPc.all.order('borrow_status DESC')
    end 
  end

  def borrow
    @lab_pcs = LabPc.where("borrow_status = '1'")
    @softwares = Software.where("borrow_status = '0'")
  end
end
