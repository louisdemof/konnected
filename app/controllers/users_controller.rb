class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @level = @user.level
    @project = @user.projects
    @solicitations = @user.solicitations

    url = "https://api.github.com/users/#{@user.github_username}"
    user_serialized = open(url).read
    @github_user = JSON.parse(user_serialized)
  end 


  def index
    @user = User.all
  end 
end
