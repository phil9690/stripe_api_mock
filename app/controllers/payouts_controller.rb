class PayoutsController < ApplicationController
    def index
    end

    def show
        id = params[:payout_token]
        @payout = Payout.find_by(payout_token: id)
    end
end
