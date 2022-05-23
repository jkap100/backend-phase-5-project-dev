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
        topping = Topping.create!(crust_params)
        render json: topping, status: :created
    end

    private

    def crust_params
        params.permit(:name, :category, :price, :image)
    end
    
end
