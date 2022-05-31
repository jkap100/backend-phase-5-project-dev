class ToppingsController < ApplicationController

    skip_before_action :authorize, only: [:index, :meats, :veggies]

    def index
        render json: Topping.all
    end

    def meats
        meats = Topping.where(category: 'Meat')
        render json: meats
    end

    def veggies
        veggies = Topping.where(category: 'Veggies')
        render json: veggies
    end

    def create
        topping = Topping.create!(topping_params)
        render json: topping, status: :created
    end

    def destroy
        topping = Topping.find(params[:id])
        topping.destroy
        head :no_content
    end

    private

    def topping_params
        params.permit(:name, :category, :price, :image)
    end
    
end
