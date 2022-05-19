class SaucesController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: Sauce.all
    end

    def create
        sauce = Sauce.create!(sauce_params)
        render json: sauce, status: :created
    end

    private

    def sauce_params
        params.permit(:name, :price, :image)
    end

end
