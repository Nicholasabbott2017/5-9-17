class UsersController < ApplicationController
  def new
  @user
  end
  def show
  @user = User.find(params[:id])
  end 
  def create
   @user = User.new(user_params)
  if @user.save
   flash[:success] = "Account created successfully!"
   redirect_to @user
  else
   render 'new'
  end
  end
  private
  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def search
  end
  def display
    @users = User.search(params[:search]).order("created_at DESC") 
  end
  def logged_in_user
  unless logged_in?
  flash[:danger] = "Please log in"
  redirect_to login_url
  end
  end
  end