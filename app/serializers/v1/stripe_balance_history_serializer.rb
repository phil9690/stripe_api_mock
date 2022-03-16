module V1
    class StripeBalanceHistorySerializer < BaseSerializer
        def self.url
            '/v1/balance/history'
        end

        def self.item_attributes(item)
            V1::StripeBalanceTransactionSerializer.item_attributes(item)
        end
    end
end