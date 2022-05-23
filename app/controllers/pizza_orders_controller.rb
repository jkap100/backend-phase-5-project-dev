class PizzaOrdersController < ApplicationController

    skip_before_action :authorize, only: [:index, :create]

    def index
        render json: PizzaOrder.all
    end

    def create
        # byebug
        pizza_order = PizzaOrder.create!(pizza_order_params)
        render json: pizza_order, status: :created
    end

    private

    def pizza_order_params
        params.permit(:user_id, :store_id, :crust_id, :sauce_id, :due_date, :due_time, :status, :quantity, :first_name, :last_name, :street, :city, :state, :zip)
    end

end
