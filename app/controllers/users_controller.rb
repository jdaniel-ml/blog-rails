class UsersController < ApplicationController
  def index
    @users = User.all
    puts @users
  end

  def show
    @user = User.find(params[:id])
    @rel = @user.followers.find_by(follower: current_user)
  end
end
