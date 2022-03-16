module V1
    class StripeBalanceTransactionFeeDetailSerializer < BaseSerializer
        def self.serialize_items(data)
            items = []
            data.each do |item|
                serialized_item = serialize_item(item)
                items << serialized_item
            end

            items
        end

        def self.item_attributes(item)
            {
                'amount': item.amount,
                'application': item.application,
                'currency': item.currency,
                'description': item.description,
                'type': item.stripe_type
            }
        end
    end
end