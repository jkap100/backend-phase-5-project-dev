class PizzaOrdersController < ApplicationController

    skip_before_action :authorize, only: [:index, :create]

    def index
        render json: PizzaOrder.all
    end

    def cart
        cart = PizzaOrder.where(user_id: params[:user_id], status: 'Cart')
        render json: cart
    end

    def create
        # byebug
        pizza_order = PizzaOrder.create!(pizza_order_params)
        render json: pizza_order, status: :created
    end

    def update
        # byebug
        pizza_order = PizzaOrder.find(params[:id])
        pizza_order.update!(pizza_order_params)
        render json: pizza_order, status: :accepted

    end

    def destroy
        pizza_order = PizzaOrder.find(params[:id])
        pizza_order.destroy
        head :no_content
    end

    private

    def pizza_order_params
        params.permit(:user_id, :store_id, :crust_id, :sauce_id, :due_date, :due_time, :status, :quantity, :price, :first_name, :last_name, :street, :city, :state, :zip, :order_type)
    end

end
