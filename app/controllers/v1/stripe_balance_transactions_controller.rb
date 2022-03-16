module V1
    class StripeBalanceTransactionsController < ApplicationController
        ITEMS_PER_PAGE = 20

        def show
            # id = params[:id]
            # @balance_transaction = StripeBalanceTransaction.find_by(stripe_balance_transaction_id: id)
            # render json: @balance_transaction


            id = params[:id]
            @balance_transaction = StripeBalanceTransaction.find_by(stripe_balance_transaction_id: id)
            render json: serializer.serialize_item(@balance_transaction)
        end

        def index
            @balance_transactions = StripeBalanceTransaction.all
            render json: serializer.serialize_items(@balance_transactions)
        end

        # def balance_history
        #     binding.pry
        #     last_id = StripePayout.find_by(stripe_payout_id: params[:payout]).stripe_balance_transaction.order(created: :desc).last.id
        #     @balance_history = StripePayout.find_by(stripe_payout_id: params[:payout]).stripe_balance_transaction.order(created: :desc).limit(ITEMS_PER_PAGE)
        #     has_more = (@balance_history.last.id == last_id) ? false : true

        #     data = ActiveModelSerializers::SerializableResource.new(@balance_history, each_serializer: V1::StripeBalanceTransactionSerializer).to_json
        #     data = JSON.parse(data)
        #     data['object'] = 'list'
        #     data['has_more'] = has_more
        #     data['url'] = '/v1/balance_transactions'
        #     render json: data

        #     #render json: { object: 'list', data: @balance_history, has_more: has_more }, each_serializer: V1::StripeBalanceTransactionSerializer
        #     #render json: @balance_history, each_serializer: V1::StripeBalanceTransactionSerializer, root: 'data', meta: {total: 500, totalNotFiltered: 500}
        #     #render json: { data: V1::StripeBalanceTransactionSerializer.new(@balance_history) }
        # end

        private

        def serializer
            V1::StripeBalanceTransactionSerializer
        end
    end
end