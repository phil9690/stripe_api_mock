class StripeBalanceHistory
    include ActiveModel::Model
    include ActiveModel::Serializers::JSON

    #belongs_to :payout, foreign_key: :source
   #self.table_name = :stripe_balance_histories

    # def attributes
    #     {
    #         "id": id,
    #         "object": object,
    #         "amount": amount,
    #         "available_on": available_on,
    #         "created": created,
    #         "currency": currency,
    #         "description": description,
    #         "exchange_rate": exchange_rate,
    #         "fee": fee,
    #         "fee_details": fee_details,
    #         "net": net,
    #         "reporting_category": reporting_category,
    #         "source": source,
    #         "status": status,
    #         "type": stripe_type
    #     }
    # end

    # def id
    #     payout_history_token
    # end

    # def type
    #     stripe_type
    # end
end
  