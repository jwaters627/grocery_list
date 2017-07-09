class UsersController < ApplicationController

 

  layout 'test'
  

  def index
    @users = User.sorted
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(lists_path)
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
  

   private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :user_name, :password)
  end

end
