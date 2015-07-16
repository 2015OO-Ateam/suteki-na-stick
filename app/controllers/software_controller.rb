class SoftwareController < ApplicationController
  def edit
    @software = Software.find(params[:id])
  end
  def update
    @software = Software.find(params[:id])
    if @software.update(software_params)
      redirect_to home_index_path
    else
      render 'edit'
    end
  end

  private
  def software_params
    params[:software].permit(:return_status)
  end
end
