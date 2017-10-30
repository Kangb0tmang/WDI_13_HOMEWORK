class DishesController < ApplicationController
  # Create
  def new
  end

  def create
    dish = Dish.new
    dish.name = params[:name]
    dish.img_url = params[:img_url]
    dish.description = params[:description]
    dish.save
    redirect_to '/dishes'
  end

  # Read
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    @comments = @dish.comments
  end

  # Update
  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.name = params[:name]
    @dish.img_url = params[:img_url]
    @dish.description = params[:description]
    @dish.save
    redirect_to "/dishes/#{params[:id]}"
  end

  # Delete
  def confirm_delete
    @dish = Dish.find(params[:id])
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to '/dishes'
  end
end
