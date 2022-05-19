class AddressesController < ApplicationController

    skip_before_action :authorize, only: [:index]

    def index
        render json: Address.all
    end

    def create
        address = Aress.create!(address_params)
    end

    private

    def address_params
        params.permit(:street, :city, :state, :user_id)
    end
end
