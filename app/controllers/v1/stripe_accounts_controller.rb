module V1
    class StripeAccountsController < ApplicationController
        def show
            @stripe_account = StripeAccount.find_by(stripe_account_id: params[:id])
            render json: serializer.serialize_item(@stripe_account)
        end

        private
        
        def serializer
            V1::StripeAccountSerializer
        end
    end
end