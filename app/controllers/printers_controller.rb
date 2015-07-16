class PrintersController < ApplicationController

  def new
    @printer = Printer.new
  end

  def create
    printer = params[:printer].permit(:name,:acquisition_date)
    Printer.create(printer)
    redirect_to new_resource_path
  end






end
