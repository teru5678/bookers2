class UsersController < ApplicationController
  def index
    @user = User.new
    @uses = User.all
  end
  
  def create
    @user = User.new(user_params)
    @book.save
    redirect_to user_path

  def show
    @user = User.find(params[:id])
    @books = @user.books
    
  end

  def edit
    @uaer = User.find(params[:id])
  end
  
  private
  def user_params
   params.require(:user).permit(:email,:name,:introduction)
  end
end
