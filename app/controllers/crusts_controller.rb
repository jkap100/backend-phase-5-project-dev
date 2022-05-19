class CrustsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: Crust.all
    end

    def create
        crust = Crust.create!(crust_params)
        render json: crust, status: :created
    end

    private

    def crust_params
        params.permit(:name, :price, :image)
    end
end
