class PizzaOrderToppingsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: PizzaOrderToppings.all
    end

    def create
        pizza_order_toppings = PizzaOrderToppings.create!(pizza_order_toppings_params)
        render json: pizza_order_toppings, status: :created
    end

    private

    def pizza_order_toppings_params
        params.permit(:pizza_order_id, :topping_id)
    end

end
