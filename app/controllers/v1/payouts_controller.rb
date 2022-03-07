module V1
    class PayoutsController < ApplicationController
        def index
        end

        def show
            id = params[:id]
            @payout = Payout.find_by(payout_token: id)
            render json: @payout
        end
    end
end