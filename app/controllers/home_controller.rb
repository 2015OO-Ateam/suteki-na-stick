class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:show, :index]
  def index
    @users = User.all
  end

  def show
  end
end
