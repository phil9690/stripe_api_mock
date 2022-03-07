class Payout < ApplicationRecord
    include ActiveModel::Serializers::JSON

    def attributes
        {
            'id': payout_token,
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
            'type': type
        }
    end

    private

    def id
        payout_token
    end
end
  