class LabPcController < ApplicationController

  def edit
    @lab_pc = LabPc.find(params[:id])
    @test = params[:id]
    #ip
    #@ip = Ip.all
  end

  def confirm
    @lab_pc = LabPc.find(params[:id])
    render :edit if @task.invalid?
    #@pc_info = LabPc.
  end

  def update
    @lab_pc = LabPc.find(params[:id])
    if @lab_pc.update(lab_pc_params)
      redirect_to borrow_index_path
    else
      render 'edit'
    end
  end
  def new
    @lab_pc = LabPc.new
  end

  def create
    lab_pc = params[:lab_pc].permit(:name,:machine_name,:cpu,:memory,:hdd)
    Labpc.create(lab_pc)
    redirect_to new_resource_path
  end




  private
    def lab_pc_params
      params[:lab_pc].permit(:os)
    end

end
