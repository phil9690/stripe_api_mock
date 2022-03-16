module V1
    class StripePayoutsController < ApplicationController
        def index
            starting_after = params[:starting_after]
            if starting_after.nil?
                @payouts = StripePayout.all.order(created: :desc).limit(ITEMS_PER_PAGE)
            else
                @payouts = StripePayout.where('id > ?', start_after_id(starting_after)).order(created: :desc).limit(ITEMS_PER_PAGE)
            end

            render json: serializer.serialize_items(@payouts)
        end

        def show
            id = params[:id]
            @payout = StripePayout.find_by(stripe_payout_id: id)
            render json: serializer.serialize_item(@payout)
        end

        private

        def serializer
            V1::StripePayoutSerializer
        end

        def start_after_id(starting_after)
            StripePayout.find_by(stripe_payout_id: starting_after).id
        end
    end
end