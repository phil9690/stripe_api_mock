module V1
    class StripePayoutsController < ApplicationController
        def index
        end

        def show
            id = params[:id]
            @payout = StripePayout.find_by(stripe_payout_id: id)
            render json: @payout
        end
    end
end