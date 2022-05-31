class CrustsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: Crust.all
    end

    def create
        crust = Crust.create!(crust_params)
        render json: crust, status: :created
    end

    def destroy
        crust = Crust.find(params[:id])
        crust.destroy
        head :no_content
    end

    private

    def crust_params
        params.permit(:name, :price, :image)
    end
end
