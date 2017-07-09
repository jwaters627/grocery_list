class ListsController < ApplicationController

  def index
    @lists = List.sorted
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
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

  def list_params
    params.require(:list).permit(:name)
  end

end
