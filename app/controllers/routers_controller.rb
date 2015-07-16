class RoutersController < ApplicationController

  def new
    @router = Router.new
  end

  def create
    router = params[:router].permit(:name,:acquisition_date)
    Router.create(router)
    redirect_to new_resource_path
  end


end
