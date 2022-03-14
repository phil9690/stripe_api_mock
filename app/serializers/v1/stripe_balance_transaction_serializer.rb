module V1
    class StripeBalanceTransactionSerializer < ActiveModel::Serializer
        def attributes
            {
                'id': id,
                'object': object,
                'amount': amount,
                'available_on': available_on,
                'created': created,
                'currency': currency,
                'description': description,
                'exchange_rate': exchange_rate,
                'fee': fee,
                'net': net,
                'reporting_category': reporting_category,
                'source': source,
                'status': status,
                'type': type
            }
        end
    
        def id
            stripe_balance_transaction_id
        end
    end
end