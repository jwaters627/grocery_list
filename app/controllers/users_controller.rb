class UsersController < ApplicationController

  layout 'test'

  def index
    @users = User.sorted
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

end
