class LabPcController < ApplicationController
before_action :authenticate_user!

  def borrow_edit
    @lab_pc = LabPc.find(params[:id])
    @ip = Ip.where("usability = '1'")
  end

  def borrow_update
    @lab_pc = LabPc.find(params[:id])
    @lab_pc.room = params[:user_room]
    @lab_pc.update(borrow_params)
    @ip = Ip.find(params[:ip_number])
    @ip.resource_id = params[:id]
    @ip.usability = 'unusable'
    @ip.save

    redirect_to borrow_resources_path
  end

  private
    def borrow_params
      params[:lab_pc].permit(
        :os, :new_arrival, :borrow_status, :necessary_of_scan, :return_status
      )
    end

end
