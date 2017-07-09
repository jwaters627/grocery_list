class ListsController < ApplicationController

  layout 'test'

  def index
    @lists = List.sorted
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
    @item = Item.new
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
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      redirect_to(lists_path(@list))
    else
      render('edit')
    end
  end

  def delete
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    flash[:success] = "List deleted"
    redirect_to(lists_path)
  end


  private

  def list_params
    params.require(:list).permit(:name)
  end

end
