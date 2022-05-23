class PizzaOrdersController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: PizzaOrder.all
    end

    def create
        pizza_order = PizzaOrder.create!(pizza_order_params)
        render json: pizza_order, status: :created
    end

    private

    def pizza_order_params
        params.permit(:user_id, :address_id, :store_id, :crust_id, :sauce_id, :due_date, :due_time, :status, :quantity, :image)
    end

end
