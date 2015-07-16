class ResourcesController < ApplicationController
  def index
    @lab_pcs = LabPc.all
    @softwares = Software.all
    @printers = Printer.all
    @routers = Router.all
  end

  def new
  end
  
end
