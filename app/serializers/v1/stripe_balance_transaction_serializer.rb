# module V1
#     class StripeBalanceTransactionSerializer < ActiveModel::Serializer
#         attribute :id
#         attribute :stripe_object, key: :object
#         attribute :amount
#         attribute :available_on
#         attribute :created
#         attribute :currency
#         attribute :description
#         attribute :exchange_rate
#         attribute :fee
#         #attribute :stripe_balance_transaction_fee_detail, key: :fee_details
#         attribute :net
#         attribute :reporting_category
#         attribute :source
#         attribute :status
#         attribute :type

#         has_many :stripe_balance_transaction_fee_detail, key: :fee_details do
#             object.stripe_balance_transaction_fee_detail
#         end
    
#         def id
#             object.stripe_balance_transaction_id
#         end

#         def available_on
#             object.available_on.to_datetime.to_i
#         end

#         def created
#             object.created.to_datetime.to_i
#         end

#         def root
#             'data'
#         end
#     end
# end

module V1
    class StripeBalanceTransactionSerializer < BaseSerializer
        def self.url
            '/v1/balance_transactions'
        end

        def self.item_attributes(item)
            {
                'id': item.stripe_balance_transaction_id,
                'object': item.stripe_object,
                'amount': item.amount,
                'available_on': item.available_on.to_datetime.to_i,
                'created': item.created.to_datetime.to_i,
                'currency': item.currency,
                'description': item.description,
                'exchange_rate': item.exchange_rate,
                'fee': item.fee,
                'fee_details': V1::StripeBalanceTransactionFeeDetailSerializer.serialize_items(item.stripe_balance_transaction_fee_detail),
                'net': item.net,
                'reporting_category': item.reporting_category,
                'source': item.source,
                'status': item.status,
                'type': item.stripe_type
            }
        end
    end
end