class ResourcesController < ApplicationController
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
end
