### Payout and history for po_1JWACCIAvIfYzcrWqFo0MIVA

payout_1 = StripePayout.create(
    stripe_payout_id: 'po_1JWACCIAvIfYzcrWqFo0MIVA',
    amount: 1390,
    arrival_date: Time.at(1631232000).to_datetime,
    automatic: true,
    balance_transaction: 'txn_1JWACCIAvIfYzcrW1mqdmRCl',
    created: Time.at(1630805456).to_datetime,
    currency: 'gbp',
    description: "STRIPE PAYOUT",
    destination: 'ba_1En98CIAvIfYzcrWRGKJSsTe',
    failure_balance_transaction: 'txn_1Jbg6yIAvIfYzcrWzmxyBcPP',
    failure_code: 'could_not_process',
    failure_message: 'Stripe could not process this transfer.',
    livemode: true,
    metadata: nil,
    method: 'standard',
    original_payout: nil,
    reversed_by: nil,
    source_balance: nil,
    source_type: 'card',
    statement_descriptor: nil,
    status: 'failed',
    stripe_type: 'bank_account'
)

payout_1_balance_transaction_1 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1JWACCIAvIfYzcrW1mqdmRCl',
    object: "balance_transaction",
    amount: -1390,
    available_on: Time.at(1631232000).to_datetime,
    created: Time.at(1630805456).to_datetime,
    currency: "gbp",
    description: "STRIPE PAYOUT",
    exchange_rate: nil,
    fee: 0,
    net: -1390,
    reporting_category: "payout",
    source: "po_1JWACCIAvIfYzcrWqFo0MIVA",
    status: "available",
    stripe_type: "payout"
)

payout_1_balance_transaction_2 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1JW66vIAvIfYzcrWq3OncFrh',
    object: "balance_transaction",
    amount: 880,
    available_on: Time.at(1631145600).to_datetime,
    created: Time.at(1630789752).to_datetime,
    currency: "gbp",
    description: "Application fee",
    exchange_rate: nil,
    fee: 0,
    net: 880,
    reporting_category: "platform_earning",
    source: "po_1JWACCIAvIfYzcrWqFo0MIVA",
    status: "available",
    stripe_type: "application_fee"
)

payout_1_balance_transaction_3 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1JW66vIAvIfYzcrWq3OncFrh',
    object: "balance_transaction",
    amount: 510,
    available_on: Time.at(1631145600).to_datetime,
    created: Time.at(1630735723).to_datetime,
    currency: "gbp",
    description: "Application fee",
    exchange_rate: nil,
    fee: 0,
    net: 510,
    reporting_category: "platform_earning",
    source: "po_1JWACCIAvIfYzcrWqFo0MIVA",
    status: "available",
    stripe_type: "application_fee"
)

require 'pry'; binding.pry

payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_1
payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_2
payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_3

###########


payout_2 = StripePayout.create(
    stripe_payout_id: 'po_1GHiN6FBTNPFnHZBSiareiWD',
    amount: 49108,
    arrival_date: Time.at(1583452800).to_datetime,
    automatic: false,
    balance_transaction: 'txn_1GHiN6FBTNPFnHZBChDwRGbp',
    created: Time.at(1583032900).to_datetime,
    currency: 'eur',
    description: 'STRIPE PAYOUT',
    destination: 'ba_1FJJFxFBTNPFnHZBuMAxKlRc',
    failure_balance_transaction: 'txn_1GMtkuFBTNPFnHZBW38bdtFu',
    failure_code: 'could_not_process',
    failure_message: 'Stripe could not process this transfer.',
    livemode: false,
    metadata: nil,
    method: 'standard',
    original_payout: nil,
    reversed_by: nil,
    source_balance: nil,
    source_type: 'card',
    statement_descriptor: nil,
    status: 'failed',
    stripe_type: 'bank_account'
)

payout_2_balance_transaction_1 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1GHiN6FBTNPFnHZBChDwRGbp',
    object: 'balance_transaction',
    amount: -49108,
    available_on: Time.at(1583452800).to_datetime,
    created: Time.at(1583032900).to_datetime,
    currency: 'eur',
    description: 'STRIPE PAYOUT',
    exchange_rate: nil,
    fee: 0,
    net: -49108,
    reporting_category: 'payout',
    source: 'po_1GHiN6FBTNPFnHZBSiareiWD',
    status: 'available',
    stripe_type: 'payout'
)

payout_2_balance_transaction_2 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1GHAoXFBTNPFnHZBuIR9qVo9',
    object: 'balance_transaction',
    amount: 50000,
    available_on: Time.at(1583452800).to_datetime,
    created: Time.at(1582903903).to_datetime,
    currency: 'eur',
    description: nil,
    exchange_rate: nil,
    fee: 892,
    net: -49108,
    reporting_category: 'payout',
    source: 'po_1GHiN6FBTNPFnHZBSiareiWD',
    status: 'available',
    stripe_type: 'payout'
)

payout_2_balance_transaction_2_fee_details_1 = StripeBalanceTransactionFeeDetail.create(
  amount: 725,
  application: nil,
  currency: 'eur',
  description: 'Stripe processing fees',
  stripe_type: 'stripe_fee',
  stripe_balance_transaction: payout_2_balance_transaction_2
)

payout_2_balance_transaction_2_fee_details_1 = StripeBalanceTransactionFeeDetail.create(
  amount: 167,
  application: nil,
  currency: 'eur',
  description: 'VAT',
  stripe_type: 'tax',
  stripe_balance_transaction: payout_2_balance_transaction_2
)


# {
#   "object": "list",
#   "data": [

#     {
#       "id": "txn_1GHAoXFBTNPFnHZBuIR9qVo9",
#       "object": "balance_transaction",
#       "amount": 50000,
#       "available_on": 1583452800,
#       "created": 1582903903,
#       "currency": "eur",
#       "description": null,
#       "exchange_rate": null,
#       "fee": 892,
#       "fee_details": [
#         {
#           "amount": 725,
#           "application": null,
#           "currency": "eur",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         },
#         {
#           "amount": 167,
#           "application": null,
#           "currency": "eur",
#           "description": "VAT",
#           "type": "tax"
#         }
#       ],
#       "net": 49108,
#       "reporting_category": "charge",
#       "source": "ch_1GHAoVFBTNPFnHZBX03eqWg3",
#       "status": "available",
#       "type": "charge"
#     }
#   ],
#   "has_more": false,
#   "url": "/v1/balance_transactions"
# }





# "id": "po_1HN84zFBTNPFnHZBwVxSjVft",
# "object": "payout",
# "amount": 49108,
# "arrival_date": 1599523200,
# "automatic": true,
# "balance_transaction": "txn_1HN84zFBTNPFnHZBRE5YzZtX",
# "created": 1599099697,
# "currency": "eur",
# "description": "STRIPE PAYOUT",
# "destination": "ba_1FJJFxFBTNPFnHZBuMAxKlRc",
# "failure_balance_transaction": null,
# "failure_code": null,
# "failure_message": null,
# "livemode": true,
# "metadata": {
# },
# "method": "standard",
# "original_payout": null,
# "reversed_by": null,
# "source_balance": null,
# "source_type": "card",
# "statement_descriptor": null,
# "status": "paid",
# "type": "bank_account"
# }

# {

# "object": "list",
# "data": [
#   {
#     "id": "txn_1HN84zFBTNPFnHZBRE5YzZtX",
#     "object": "balance_transaction",
#     "amount": -49108,
#     "available_on": 1599523200,
#     "created": 1599099697,
#     "currency": "eur",
#     "description": "STRIPE PAYOUT",
#     "exchange_rate": null,
#     "fee": 0,
#     "fee_details": [

#     ],
#     "net": -49108,
#     "reporting_category": "payout",
#     "source": "po_1HN84zFBTNPFnHZBwVxSjVft",
#     "status": "available",
#     "type": "payout"
#   },
#   {
#     "id": "txn_1GMtkuFBTNPFnHZBW38bdtFu",
#     "object": "balance_transaction",
#     "amount": 49108,
#     "available_on": 1584268300,
#     "created": 1584268300,
#     "currency": "eur",
#     "description": "REFUND FOR PAYOUT (STRIPE PAYOUT)",
#     "exchange_rate": null,
#     "fee": 0,
#     "fee_details": [

#     ],
#     "net": 49108,
#     "reporting_category": "payout_reversal",
#     "source": "po_1GHiN6FBTNPFnHZBSiareiWD",
#     "status": "available",
#     "type": "payout_failure"
#   }
# ],
# "has_more": false,
# "url": "/v1/balance_transactions"
# }



# ================

# curl --header "Stripe-Account: acct_1BTXILGanfOWO3Cz" https://api.stripe.com/v1/payouts/po_1JuocEGanfOWO3CzQ3WNxtrM -u ...
# {
#   "id": "po_1JuocEGanfOWO3CzQ3WNxtrM",
#   "object": "payout",
#   "amount": -117955,
#   "arrival_date": 1637020800,
#   "automatic": true,
#   "balance_transaction": "txn_1JuocEGanfOWO3Cztx0NUiBE",
#   "created": 1636680702,
#   "currency": "gbp",
#   "description": "STRIPE PAYOUT",
#   "destination": "ba_1BTXmxGanfOWO3CzbKPKgAXR",
#   "failure_balance_transaction": null,
#   "failure_code": null,
#   "failure_message": null,
#   "livemode": true,
#   "metadata": {
#   },
#   "method": "standard",
#   "original_payout": null,
#   "reversed_by": null,
#   "source_balance": null,
#   "source_type": "card",
#   "statement_descriptor": null,
#   "status": "paid",
#   "type": "bank_account"
# }

# curl --header "Stripe-Account: acct_1BTXILGanfOWO3Cz" https://api.stripe.com/v1/balance/history?payout=po_1JuocEGanfOWO3CzQ3WNxtrM -u ...
# {
#   "object": "list",
#   "data": [
#     {
#       "id": "txn_1JuocEGanfOWO3Cztx0NUiBE",
#       "object": "balance_transaction",
#       "amount": 117955,
#       "available_on": 1637020800,
#       "created": 1636680702,
#       "currency": "gbp",
#       "description": "STRIPE PAYOUT",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": 117955,
#       "reporting_category": "payout",
#       "source": "po_1JuocEGanfOWO3CzQ3WNxtrM",
#       "status": "available",
#       "type": "payout"
#     },
#     {
#       "id": "txn_3JufqFGanfOWO3Cz1YUAWe2Z",
#       "object": "balance_transaction",
#       "amount": 1000,
#       "available_on": 1637020800,
#       "created": 1636646975,
#       "currency": "gbp",
#       "description": "Pledge Adjustment Thom Newton BackerKit BackerKit Customer: cus_JHAh9iquFv18YD subdomain:rome-and-roll-gladiators",
#       "exchange_rate": null,
#       "fee": 34,
#       "fee_details": [
#         {
#           "amount": 34,
#           "application": null,
#           "currency": "gbp",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         }
#       ],
#       "net": 966,
#       "reporting_category": "charge",
#       "source": "ch_3JufqFGanfOWO3Cz10fEJOQK",
#       "status": "available",
#       "type": "charge"
#     },
#     {
#       "id": "txn_3JufltGanfOWO3Cz0F4NHaeY",
#       "object": "balance_transaction",
#       "amount": 4400,
#       "available_on": 1637020800,
#       "created": 1636646705,
#       "currency": "gbp",
#       "description": "Pledge Adjustment Bastian BackerKit BackerKit Customer: cus_JF5vee8prseCL9 subdomain:rome-and-roll-gladiators",
#       "exchange_rate": null,
#       "fee": 82,
#       "fee_details": [
#         {
#           "amount": 82,
#           "application": null,
#           "currency": "gbp",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         }
#       ],
#       "net": 4318,
#       "reporting_category": "charge",
#       "source": "ch_3JufltGanfOWO3Cz054HeLgp",
#       "status": "available",
#       "type": "charge"
#     },
#     {
#       "id": "txn_1JuffCGanfOWO3Cz94fvD00n",
#       "object": "balance_transaction",
#       "amount": -12500,
#       "available_on": 1636646290,
#       "created": 1636646290,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Famfrit Alexander BackerKit Customer: cus_HQj6uwHxQdrOab subdomain:procyon3 email:felldoh.eatbugs@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -12500,
#       "reporting_category": "refund",
#       "source": "re_1JuffCGanfOWO3CzCLUuVWdp",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JufXkGanfOWO3CzHFkGd7RA",
#       "object": "balance_transaction",
#       "amount": -10000,
#       "available_on": 1636645828,
#       "created": 1636645828,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (David Karoski BackerKit Customer: cus_BZPeKlfGjt5m3t subdomain:procyon3 email:dkaroski@comcast.net)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -10000,
#       "reporting_category": "refund",
#       "source": "re_1JufXkGanfOWO3Cz4mRp9pF5",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JufVrGanfOWO3CzQBPbfKYv",
#       "object": "balance_transaction",
#       "amount": -10000,
#       "available_on": 1636645711,
#       "created": 1636645711,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Derek BackerKit Customer: cus_HWNkyYhIZb3t6z subdomain:procyon3 email:derek.k@me.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -10000,
#       "reporting_category": "refund",
#       "source": "re_1JufVrGanfOWO3CzGsrG6zg7",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JufAoGanfOWO3Czp8zqMozL",
#       "object": "balance_transaction",
#       "amount": -3300,
#       "available_on": 1636644406,
#       "created": 1636644406,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Javier de la Maza BackerKit Customer: cus_HQ1WQMpQ6GAavS subdomain:procyon3 email:freekyflow@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3300,
#       "reporting_category": "refund",
#       "source": "re_1JufAoGanfOWO3CzL4rkk5wj",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JufAPGanfOWO3CzhGLIRyX3",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644381,
#       "created": 1636644381,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Scott Russell BackerKit Customer: cus_HPqlOx5uFZaCxC subdomain:procyon3 email:qzhdad@yahoo.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JufAPGanfOWO3CzK5LU1yvG",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JufA5GanfOWO3CziEj0tqSg",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644360,
#       "created": 1636644360,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Cory Inskeep BackerKit Customer: cus_HkZnUpfpnYGvo6 subdomain:procyon3 email:corytheitchyninja@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JufA4GanfOWO3CzTKQD0kE3",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf9gGanfOWO3CzDtzIihvO",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644336,
#       "created": 1636644336,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Adam Vettel BackerKit Customer: cus_HPnvh0swFagDfa subdomain:procyon3 email:awvettel@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Juf9gGanfOWO3CzRrxbDt1F",
#       "status": "available",
#       "type": "refund"
#     },
# {
#       "id": "txn_1Juf9IGanfOWO3CzTJgN0oHA",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644312,
#       "created": 1636644312,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Jake Campbell BackerKit Customer: cus_HQeFMkYVru7LnQ subdomain:procyon3 email:showlinfunk@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Juf9IGanfOWO3CzxpIbt3lv",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf91GanfOWO3Cz9G0V3TIK",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644295,
#       "created": 1636644295,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Loren BackerKit Customer: cus_HPzITKORRjvy7y subdomain:procyon3 email:lacadelinia@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Juf91GanfOWO3CzbBdqhf47",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf8dGanfOWO3CzQUtBYu9P",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644270,
#       "created": 1636644270,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Glen Bucher BackerKit Customer: cus_ELfCXI2gSdlh1z subdomain:procyon3 email:autobahn42@yahoo.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Juf8cGanfOWO3Czeetzfxki",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf8JGanfOWO3CzMSklRkIH",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636644251,
#       "created": 1636644251,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Martin Gallo BackerKit Customer: cus_HPxRwdnHYuiCjJ subdomain:procyon3 email:martimer@mindspring.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Juf8JGanfOWO3CzVaXndC5S",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf7mGanfOWO3CzLvYyNUJh",
#       "object": "balance_transaction",
#       "amount": -17600,
#       "available_on": 1636644218,
#       "created": 1636644218,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Caleb Patterson BackerKit Customer: cus_IFpkzn6F8Ye8iH subdomain:procyon3 email:calebpattersonengineer@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -17600,
#       "reporting_category": "refund",
#       "source": "re_1Juf7mGanfOWO3CzAKxmh3YQ",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf6tGanfOWO3CzZuiNTF9z",
#       "object": "balance_transaction",
#       "amount": -17600,
#       "available_on": 1636644163,
#       "created": 1636644163,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Cameron Hutchison BackerKit Customer: cus_HQSgSTSkemyzeS subdomain:procyon3 email:cam.hutch.92@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -17600,
#       "reporting_category": "refund",
#       "source": "re_1Juf6tGanfOWO3CzdZE7SmjA",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf5EGanfOWO3CzuNm4eyMX",
#       "object": "balance_transaction",
#       "amount": -16250,
#       "available_on": 1636644059,
#       "created": 1636644059,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Garrett Severson BackerKit Customer: cus_HPqjHqK3IegEbu subdomain:procyon3 email:garrett.severson@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -16250,
#       "reporting_category": "refund",
#       "source": "re_1Juf5DGanfOWO3CzAXX0lnjZ",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Juf2FGanfOWO3CzHxFNCdDJ",
#       "object": "balance_transaction",
#       "amount": -12100,
#       "available_on": 1636643875,
#       "created": 1636643875,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (ben mat BackerKit Customer: cus_HQ8OCvjjvOca3E subdomain:procyon3 email:nom_2@hotmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -12100,
#       "reporting_category": "refund",
#       "source": "re_1Juf2FGanfOWO3CzVWVg5227",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueydGanfOWO3Czq0I6Tr96",
#       "object": "balance_transaction",
#       "amount": -3300,
#       "available_on": 1636643651,
#       "created": 1636643651,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Shteevie BackerKit Customer: cus_HPmybFnueUN8MH subdomain:procyon3 email:shteevie@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3300,
#       "reporting_category": "refund",
#       "source": "re_1JueydGanfOWO3Cz7CKSbkew",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueyJGanfOWO3CzYfhK09qe",
#       "object": "balance_transaction",
#       "amount": -3300,
#       "available_on": 1636643631,
#       "created": 1636643631,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Mehdi Ouahab BackerKit Customer: cus_HQGaHHbKfX09qU subdomain:procyon3 email:mehdi.ouahab@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3300,
#       "reporting_category": "refund",
#       "source": "re_1JueyJGanfOWO3CzB4LTetbJ",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuexvGanfOWO3CzjPxhFya0",
#       "object": "balance_transaction",
#       "amount": -3300,
#       "available_on": 1636643607,
#       "created": 1636643607,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Sebastian Haupt BackerKit Customer: cus_HPr8mrm8ICM7HE subdomain:procyon3 email:s.haupti@ewetel.net)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3300,
#       "reporting_category": "refund",
#       "source": "re_1JuexvGanfOWO3CzWM89ZIQt",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Jueu3GanfOWO3Cz2zBPbmAQ",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636643367,
#       "created": 1636643367,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Jarosław Chmiel BackerKit Customer: cus_HXn6HGYWtvk2aG subdomain:procyon3 email:jaroslawchmiel@hotmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Jueu3GanfOWO3CzgwV4vlc3",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuetfGanfOWO3Cz81HEZf4y",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636643342,
#       "created": 1636643342,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Acacio Cruz BackerKit Customer: cus_HPqb691ul7VdVr subdomain:procyon3 email:acacio@acacio.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JueteGanfOWO3CzacnBnr2g",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuetIGanfOWO3CzdiDqI6Wr",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636643320,
#       "created": 1636643320,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (mikam BackerKit Customer: cus_HQjnslZ7XCA47N subdomain:procyon3 email:michael.kaltenhofer@sbg.at)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JuetIGanfOWO3CzZcZh0ojc",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuesQGanfOWO3CzTsRLpqxO",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636643266,
#       "created": 1636643266,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Fernando Perulero Salinas BackerKit Customer: cus_HR47Gl8zJOGo8N subdomain:procyon3 email:ferbarinf@hotmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JuesQGanfOWO3CzLtbkd2YG",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuejQGanfOWO3Cz0dzhDndp",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636642707,
#       "created": 1636642707,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Eberhard Michaelis BackerKit Customer: cus_HQYYXYIzXwuhc7 subdomain:procyon3 email:eberhard.michaelis@team-solutions.de)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JuejPGanfOWO3CzKlia8IsM",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueizGanfOWO3Cz7LrVdPtU",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636642680,
#       "created": 1636642680,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (gdranrpg@yahoo.com BackerKit Customer: cus_HQhX4TsIShOBzI subdomain:procyon3 email:gdranrpg@yahoo.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JueiyGanfOWO3CzNjdCyu0p",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueiYGanfOWO3CzO9K1O7Bm",
#       "object": "balance_transaction",
#       "amount": -3500,
#       "available_on": 1636642654,
#       "created": 1636642654,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Bastian BackerKit Customer: cus_HQzxUIVExgth86 subdomain:procyon3 email:bastiangoettker@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3500,
#       "reporting_category": "refund",
#       "source": "re_1JueiYGanfOWO3CzqVRfg0cV",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuehyGanfOWO3CzQHWAq50x",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636642618,
#       "created": 1636642618,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Giuseppe De Carolis BackerKit Customer: cus_HQJ0dCvBY6F4RD subdomain:procyon3 email:giuseppe.decarolis2@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1JuehyGanfOWO3Cz0XMZfahn",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1Jueh8GanfOWO3CzweJAOuqP",
#       "object": "balance_transaction",
#       "amount": -4400,
#       "available_on": 1636642566,
#       "created": 1636642566,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Rodaballo BackerKit Customer: cus_HPpDa7vcHwQtHC subdomain:procyon3 email:free.tuxi@gmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4400,
#       "reporting_category": "refund",
#       "source": "re_1Jueh8GanfOWO3CzJdFgTQW1",
#       "status": "available",
#       "type": "refund"
#     },
# {
#       "id": "txn_1JuefoGanfOWO3Cze2blZjG9",
#       "object": "balance_transaction",
#       "amount": -1050,
#       "available_on": 1636642484,
#       "created": 1636642484,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Thom Newton BackerKit Customer: cus_HVUr5hdrWHB8G5 subdomain:procyon3 email:sherman_is_the_daddy@hotmail.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -1050,
#       "reporting_category": "refund",
#       "source": "re_1JuefoGanfOWO3CzA6IUhiZd",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueehGanfOWO3Cz3S5MtAI3",
#       "object": "balance_transaction",
#       "amount": -3500,
#       "available_on": 1636642415,
#       "created": 1636642415,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Michael BackerKit Customer: cus_HPoRfzDvTDKQuY subdomain:procyon3 email:misha2001m@mail.ru)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3500,
#       "reporting_category": "refund",
#       "source": "re_1JueehGanfOWO3CzYgpyi5qm",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JuecAGanfOWO3CzoeH5wbqa",
#       "object": "balance_transaction",
#       "amount": -3100,
#       "available_on": 1636642257,
#       "created": 1636642257,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (David Tyrrell BackerKit Customer: cus_HPnL4d0ZnfuLvn subdomain:procyon3 email:dtyrrell@nenevalleyfire.com)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -3100,
#       "reporting_category": "refund",
#       "source": "re_1Juec9GanfOWO3CzAlWnUqKe",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_1JueZ4GanfOWO3CzBpMFbJrh",
#       "object": "balance_transaction",
#       "amount": -4150,
#       "available_on": 1636642065,
#       "created": 1636642065,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Craig Rawe BackerKit Customer: cus_HR3pUNDqpZyBWV subdomain:procyon3 email:slivercraig@hotmail.co.uk)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -4150,
#       "reporting_category": "refund",
#       "source": "re_1JueZ3GanfOWO3CzDLgNirgm",
#       "status": "available",
#       "type": "refund"
#     },
#     {
#       "id": "txn_3JubMcGanfOWO3Cz1QXpwe5Q",
#       "object": "balance_transaction",
#       "amount": 67607,
#       "available_on": 1637020800,
#       "created": 1636629763,
#       "currency": "gbp",
#       "description": null,
#       "exchange_rate": null,
#       "fee": 966,
#       "fee_details": [
#         {
#           "amount": 966,
#           "application": null,
#           "currency": "gbp",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         }
#       ],
#       "net": 66641,
#       "reporting_category": "charge",
#       "source": "ch_3JubMcGanfOWO3Cz15aPVsJy",
#       "status": "available",
#       "type": "charge"
#     },
#     {
#       "id": "txn_3JuauMGanfOWO3Cz0pEuHv6U",
#       "object": "balance_transaction",
#       "amount": 700,
#       "available_on": 1637020800,
#       "created": 1636628010,
#       "currency": "gbp",
#       "description": "Pledge Adjustment Simon Ward Rogers BackerKit BackerKit Customer: cus_KLppmK0V2ihE6I subdomain:procyon3",
#       "exchange_rate": null,
#       "fee": 30,
#       "fee_details": [
#         {
#           "amount": 30,
#           "application": null,
#           "currency": "gbp",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         }
#       ],
#       "net": 670,
#       "reporting_category": "charge",
#       "source": "ch_3JuauMGanfOWO3Cz02ZJVGSI",
#       "status": "available",
#       "type": "charge"
#     }
#   ],
#   "has_more": true,
#   "url": "/v1/balance_transactions"
# }




# =====================


# curl --header "Stripe-Account: acct_1DEFZeB6X7G4fQtu" https://api.stripe.com/v1/payouts/po_1GNrqlB6X7G4fQtuXszSGhnh -u ...
# {
#   "id": "po_1GNrqlB6X7G4fQtuXszSGhnh",
#   "object": "payout",
#   "amount": -167400,
#   "arrival_date": 1584662400,
#   "automatic": true,
#   "balance_transaction": "txn_1GNrqlB6X7G4fQtuL7GwgP1b",
#   "created": 1584499303,
#   "currency": "gbp",
#   "description": "STRIPE PAYOUT",
#   "destination": "ba_1DEFttB6X7G4fQtu1hBqOum6",
#   "failure_balance_transaction": "txn_1GPmNTB6X7G4fQtudiEIITCl",
#   "failure_code": "debit_not_authorized",
#   "failure_message": "Debit transactions are not approved on the destination bank account. Stripe requires bank accounts to be set up for both credit and debit transfers.",
#   "livemode": true,
#   "metadata": {
#   },
#   "method": "standard",
#   "original_payout": null,
#   "reversed_by": null,
#   "source_balance": null,
#   "source_type": "card",
#   "statement_descriptor": null,
#   "status": "failed",
#   "type": "bank_account"
# }

# curl --header "Stripe-Account: acct_1DEFZeB6X7G4fQtu" https://api.stripe.com/v1/balance/history?payout=po_1GNrqlB6X7G4fQtuXszSGhnh -u ...
# {
#   "object": "list",
#   "data": [
#     {
#       "id": "txn_1GNrqlB6X7G4fQtuL7GwgP1b",
#       "object": "balance_transaction",
#       "amount": 167400,
#       "available_on": 1584662400,
#       "created": 1584499303,
#       "currency": "gbp",
#       "description": "STRIPE PAYOUT",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": 167400,
#       "reporting_category": "payout",
#       "source": "po_1GNrqlB6X7G4fQtuXszSGhnh",
#       "status": "available",
#       "type": "payout"
#     },
#     {
#       "id": "txn_1GNjvPB6X7G4fQtuCJTqwKxZ",
#       "object": "balance_transaction",
#       "amount": -167400,
#       "available_on": 1584468839,
#       "created": 1584468839,
#       "currency": "gbp",
#       "description": "REFUND FOR CHARGE (Order for Master Data Management 360 - TRAINING)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -167400,
#       "reporting_category": "refund",
#       "source": "re_1GNjvPB6X7G4fQtu7JKqAMfp",
#       "status": "available",
#       "type": "refund"
#     }
#   ],
#   "has_more": false,
#   "url": "/v1/balance_transactions"
# }




# =================



# curl --header "Stripe-Account: acct_1DEFZeB6X7G4fQtu" https://api.stripe.com/v1/payouts/po_1GlPTkB6X7G4fQtuovTCvhTc -u ...
# {
#   "id": "po_1GlPTkB6X7G4fQtuovTCvhTc",
#   "object": "payout",
#   "amount": 710364,
#   "arrival_date": 1590537600,
#   "automatic": true,
#   "balance_transaction": "txn_1GlPTkB6X7G4fQtue0ByIRO5",
#   "created": 1590110116,
#   "currency": "gbp",
#   "description": "STRIPE PAYOUT",
#   "destination": "ba_1DEFttB6X7G4fQtu1hBqOum6",
#   "failure_balance_transaction": null,
#   "failure_code": null,
#   "failure_message": null,
#   "livemode": true,
#   "metadata": {
#   },
#   "method": "standard",
#   "original_payout": null,
#   "reversed_by": null,
#   "source_balance": null,
#   "source_type": "card",
#   "statement_descriptor": null,
#   "status": "paid",
#   "type": "bank_account"
# }

# curl --header "Stripe-Account: acct_1DEFZeB6X7G4fQtu" https://api.stripe.com/v1/balance/history?payout=po_1GlPTkB6X7G4fQtuovTCvhTc -u ...
# {
#   "object": "list",
#   "data": [
#     {
#       "id": "txn_1GlPTkB6X7G4fQtue0ByIRO5",
#       "object": "balance_transaction",
#       "amount": -710364,
#       "available_on": 1590537600,
#       "created": 1590110116,
#       "currency": "gbp",
#       "description": "STRIPE PAYOUT",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -710364,
#       "reporting_category": "payout",
#       "source": "po_1GlPTkB6X7G4fQtuovTCvhTc",
#       "status": "available",
#       "type": "payout"
#     },
#     {
#       "id": "txn_1GSoBgB6X7G4fQtu1HohYddm",
#       "object": "balance_transaction",
#       "amount": 904000,
#       "available_on": 1585872000,
#       "created": 1585676863,
#       "currency": "gbp",
#       "description": null,
#       "exchange_rate": null,
#       "fee": 26236,
#       "fee_details": [
#         {
#           "amount": 26236,
#           "application": null,
#           "currency": "gbp",
#           "description": "Stripe processing fees",
#           "type": "stripe_fee"
#         }
#       ],
#       "net": 877764,
#       "reporting_category": "charge",
#       "source": "ch_1GSoBfB6X7G4fQtuIsHOK62Z",
#       "status": "available",
#       "type": "charge"
#     },
#     {
#       "id": "txn_1GPmNTB6X7G4fQtudiEIITCl",
#       "object": "balance_transaction",
#       "amount": -167400,
#       "available_on": 1584954923,
#       "created": 1584954923,
#       "currency": "gbp",
#       "description": "REFUND FOR PAYOUT (STRIPE PAYOUT)",
#       "exchange_rate": null,
#       "fee": 0,
#       "fee_details": [

#       ],
#       "net": -167400,
#       "reporting_category": "payout_reversal",
#       "source": "po_1GNrqlB6X7G4fQtuXszSGhnh",
#       "status": "available",
#       "type": "payout_failure"
#     }
#   ],
#   "has_more": false,
#   "url": "/v1/balance_transactions"
# }
