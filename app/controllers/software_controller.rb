class SoftwareController < ApplicationController
  def edit
    @software = Software.find(params[:id])
  end

  def new
    @software = Software.new
  end

  def create
    software = params[:software].permit(:name,:limit)
    Software.create(software)
    redirect_to new_resource_path
  end



end
