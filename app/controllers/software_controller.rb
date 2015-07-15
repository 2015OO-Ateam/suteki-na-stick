class SoftwareController < ApplicationController
  def edit
    @software = Software.find(params[:id])
  end
end
