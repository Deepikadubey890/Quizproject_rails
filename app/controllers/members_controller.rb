class MembersController < ApplicationController


def show
  # debugger
  @user = User.find(params[:id])
end

end
