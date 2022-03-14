class StripeBalanceTransaction < ApplicationRecord
    include ActiveModel::Serializers::JSON

    has_many :stripe_payout_balance_transactions
    has_one :stripe_payout, through: :stripe_payout_balance_transactions
    has_many :stripe_balance_transaction_fee_detail

    # def attributes
    #     {
    #         'id': id,
    #         'object': object,
    #         'amount': amount,
    #         'available_on': available_on,
    #         'created': created,
    #         'currency': currency,
    #         'description': description,
    #         'exchange_rate': exchange_rate,
    #         'fee': fee,
    #         'net': net,
    #         'reporting_category': reporting_category,
    #         'source': source,
    #         'status': status,
    #         'type': type
    #     }
    # end

    # def id
    #     stripe_balance_transaction_id
    # end
    
    def type
        stripe_type
    end
end
  