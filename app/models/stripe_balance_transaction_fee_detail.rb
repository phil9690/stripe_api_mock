class StripeBalanceTransactionFeeDetail < ApplicationRecord
    include ActiveModel::Serializers::JSON

    belongs_to :stripe_balance_transaction

    def attributes
        {
            'amount': amount,
            'application': application,
            'currency': currency,
            'description': description,
            'type': type
        }
    end
    
    def type
        stripe_type
    end
end
  