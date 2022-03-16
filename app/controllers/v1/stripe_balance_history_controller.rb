module V1
    class StripeBalanceHistoryController < ApplicationController
        def index
            if params[:payout]
                @balance_history = StripePayout.find_by(stripe_payout_id: params[:payout]).stripe_balance_transaction
            else
                @balance_history = StripeBalanceTransaction.all
            end

            render json: serializer.serialize_items(@balance_history)
        end

        private
        
        def serializer
            V1::StripeBalanceHistorySerializer
        end
    end
end