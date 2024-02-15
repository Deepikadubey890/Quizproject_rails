class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # @users = User.all
      @q = User.ransack(params[:q])
      @users = @q.result
       @users = User.paginate(page: params[:page], per_page: 4)
  end

end
