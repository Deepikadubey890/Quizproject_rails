class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
   @users = User.all
  render 'home/index'
  end
end