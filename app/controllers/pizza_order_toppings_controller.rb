class PizzaOrderToppingsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: PizzaOrderTopping.all
    end

    def create
        # byebug
        pizza_order_toppings = PizzaOrderTopping.create!(pizza_order_toppings_params)
        render json: pizza_order_toppings, status: :created
    end

    private

    def pizza_order_toppings_params
        params.permit(:pizza_order_id, :topping_id)
    end

end
