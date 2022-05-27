class StoresController < ApplicationController

    skip_before_action :authorize, only: [:index, :stores_by_state]

    def index
        render json: Store.all
    end

    def stores_by_state
        store = Store.where(state: params[:state])
        render json: store
    end

    def show
        store = Store.find(params[:id])
        render json: store
    end

    def create
        store = Store.create!(store_params)
        render json: store, status: :created
    end

    def destroy
        store = Store.find(params[:id])
        store.destroy
        head :no_content
    end

    private

    def store_params
        params.permit(:name, :street, :city, :state, :open, :close, :phone, :lat, :lng)
    end

end
