module V1
    class StripeAccountSerializer < BaseSerializer
        def self.url
            nil
        end

        def self.item_attributes(item)
            {
                'id': item.stripe_account_id,
                'charges_enabled': item.charges_enabled,
                'country': item.country,
                'display_name': item.display_name,
                'payouts_enabled': item.payouts_enabled,
                'statement_descriptor': item.statement_descriptor,
                'type': item.stripe_type
            }
        end
    end
end