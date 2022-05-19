class ToppingsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: Topping.all
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
