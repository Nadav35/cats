class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index 
  end
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def new
    @cat = Cat.new
    render :new
  end
  
  def create
    # byebug
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages
    end
  end
  
  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end
  
  def update
    # debugger
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages
    end
    
  end
  
  private
  
  def cat_params
    params.require(:cat).permit(:color, :description, :sex, :name, :birth_date)
  end
end