class RestaurantsController < ApplicationController 
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
def index
    @restaurants = Restaurant.all
end

def show

end

def new
    @restaurant = Restaurant.new
end

def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant = Restaurant.save
    redirect_to restaurant_path(@restaurant)
end

def edit
    
end

def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
end

def destroy
    @restaurant.destroy
    redirect_to restaurant_path, status: :see_other
end

private

def set_restaurant
    @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
    params.require(:restaurant).permit(:name, :address; :rating)
end
end


end