class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @level = @user.level
    @project = @user.projects
    @solicitations = @user.solicitations
  end
end
