# module V1
#     class StripePayoutSerializer < ActiveModel::Serializer
#         attribute :id
#         attribute :stripe_object, key: :object
#         attribute :amount
#         attribute :arrival_date
#         attribute :automatic
#         attribute :balance_transaction
#         attribute :created
#         attribute :currency
#         attribute :description
#         attribute :destination
#         attribute :failure_balance_transaction
#         attribute :failure_code
#         attribute :failure_message
#         attribute :livemode
#         attribute :metaitem
#         attribute :stripe_method, key: :method
#         attribute :original_payout
#         attribute :reversed_by
#         attribute :source_balance
#         attribute :source_type
#         attribute :statement_descriptor
#         attribute :status
#         attribute :stripe_type, key: :type

#         def id
#             object.stripe_payout_id
#         end
#     end
# end

module V1
    class StripePayoutSerializer < BaseSerializer
        def self.url
            'v1/payouts'
        end

        def self.item_attributes(item)
            {
                'id': item.stripe_payout_id,
                'object': item.stripe_object,
                'amount': item.amount,
                'arrival_date': item.arrival_date.to_datetime.to_i,
                'automatic': item.automatic,
                'balance_transaction': item.balance_transaction,
                'created': item.created.to_datetime.to_i,
                'currency': item.currency,
                'description': item.description,
                'destination': item.destination,
                'failure_balance_transaction': item.failure_balance_transaction,
                'failure_code': item.failure_code,
                'livemode': item.livemode,
                'metadata': item.metadata,
                'method': item.stripe_method,
                'original_payout': item.original_payout,
                'reversed_by': item.reversed_by,
                'source_balance': item.source_balance,
                'source_type': item.source_type,
                'statement_descriptor': item.statement_descriptor,
                'status': item.status,
                'type': item.stripe_type
            }
        end
    end
end