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
  def update
    @software = Software.find(params[:id])
    if @software.update(software_params)
      redirect_to home_index_path
    else
      render 'edit'
    end
  end


  def software_params
    params[:software].permit(:return_status)
  end

  def change
    @software = Software.find(params[:id])
  end

  def change_update
    @software = Software.find(params[:id])
    if @software.update(softwares_params)
      redirect_to resources_path
    else
      render 'change'
    end
  end

  private
    def softwares_params
      params[:software].permit(:limit)
    end

    def software_borrow_params
      params[:software].permit(:new_arrival, :borrow_status)
    end
end
