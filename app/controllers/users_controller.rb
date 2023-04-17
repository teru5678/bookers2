class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end
  
  def create
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id)
    end
  end
  
  private
  def user_params
   params.require(:user).permit(:email,:name,:introduction,:image)
  end
end
