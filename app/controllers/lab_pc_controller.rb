class LabPcController < ApplicationController
before_action :authenticate_user!
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
      redirect_to home_index_path
    else
      render 'edit'
    end
  end
  def change
    @lab_pc = LabPc.find(params[:id])
  end
  def change_update
    @lab_pc = LabPc.find(params[:id])
    if @lab_pc.update(labs_pc_params)
      redirect_to resources_path
    else
      render 'change'
    end
  end


  private
    def lab_pc_params
      params[:lab_pc].permit(:return_status)
    end

    def labs_pc_params
      params[:lab_pc].permit(:machine_name, :cpu, :memory, :hdd, :return_status)
    end
end
