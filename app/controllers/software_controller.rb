class SoftwareController < ApplicationController
  before_action :authenticate_user!
  def edit
    @software = Software.find(params[:id])
  end
end
