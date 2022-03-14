module V1
    class StripePayoutSerializer < ActiveModel::Serializer
        def attributes
            {
                'id': id,
                'object': object,
                'amount': amount,
                'arrival_date': arrival_date,
                'automatic': automatic,
                'balance_transaction': balance_transaction,
                'created': created,
                'currency': currency,
                'description': description,
                'destination': destination,
                'failure_balance_transaction': failure_balance_transaction,
                'failure_code': failure_code,
                'failure_message': failure_message,
                'livemode': livemode,
                'metadata': metadata,
                'method': method,
                'original_payout': original_payout,
                'reversed_by': reversed_by,
                'source_balance': source_balance,
                'source_type': source_type,
                'statement_descriptor': statement_descriptor,
                'status': status,
                'type': stripe_type
            }
        end
    
        def id
            stripe_payout_id
        end
    end
end