class SoftwareController < ApplicationController
  before_action :authenticate_user!
  def borrow_edit
    @software = Software.find(params[:id])
  end

  def borrow_update
    @software = Software.find(params[:id])
    if @software.update_attributes(software_borrow_params)
      redirect_to borrow_resources_path
    else
      render 'borrow_edit'
    end
  end

  private
    def software_borrow_params
      params[:software].permit(:new_arrival, :borrow_status)
    end

end
