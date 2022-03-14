module V1
    class StripeBalanceHistoryController < ApplicationController
        def index
            # @balance_history = PayoutHistory.where(payout_token: params[:payout])
            # render json: { object: 'list', data: @payouts_histories, has_more: false }
        end

        def show

        end
    end
end