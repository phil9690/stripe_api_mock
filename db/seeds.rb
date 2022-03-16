### Stripe Account

StripeAccount.create(
    stripe_account_id: 'acct_1JMxKtFIuIlgkw8M',
    charges_enabled: true,
    country: 'GB',
    display_name: 'Mock Test Account',
    payouts_enabled: true,
    statement_descriptor: 'MOCK.COM',
    stripe_type: 'standard'

)

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
    stripe_method: 'standard',
    original_payout: nil,
    reversed_by: nil,
    source_balance: nil,
    source_type: 'card',
    statement_descriptor: nil,
    status: 'failed',
    stripe_type: 'bank_account'
)

# i = 0
# while i < 20
#     po_id = "po_1JWACCIAvIfYzcrWqFo0MIf#{i}"
#     po = payout_1.dup
#     po.stripe_payout_id = po_id
#     po.save
#     i += 1
# end

payout_1_balance_transaction_1 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1JWACCIAvIfYzcrW1mqdmRCl',
    stripe_object: "balance_transaction",
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
    stripe_object: "balance_transaction",
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
    stripe_object: "balance_transaction",
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

payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_1
payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_2
payout_1.stripe_balance_transaction <<  payout_1_balance_transaction_3

###########
# Payout scenario, 
###########

payout_2 = StripePayout.create(
    stripe_payout_id: 'po_1GHiN6FBTNPFnHZBSiareiWD',
    amount: 49108,
    arrival_date: Time.at(1583452800).to_datetime,
    automatic: true,
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
    stripe_method: 'standard',
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
    stripe_object: 'balance_transaction',
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
    stripe_object: 'balance_transaction',
    amount: 50000,
    available_on: Time.at(1583452800).to_datetime,
    created: Time.at(1582903903).to_datetime,
    currency: 'eur',
    description: nil,
    exchange_rate: nil,
    fee: 892,
    net: 49108,
    reporting_category: 'charge',
    source: 'ch_1GHAoVFBTNPFnHZBX03eqWg3',
    status: 'available',
    stripe_type: 'charge'
)

payout_2_balance_transaction_2_fee_details_1 = StripeBalanceTransactionFeeDetail.create(
  amount: 725,
  application: nil,
  currency: 'eur',
  description: 'Stripe processing fees',
  stripe_type: 'stripe_fee',
  stripe_balance_transaction: payout_2_balance_transaction_2
)

payout_2_balance_transaction_2_fee_details_2 = StripeBalanceTransactionFeeDetail.create(
  amount: 167,
  application: nil,
  currency: 'eur',
  description: 'VAT',
  stripe_type: 'tax',
  stripe_balance_transaction: payout_2_balance_transaction_2
)

payout_2.stripe_balance_transaction <<  payout_2_balance_transaction_1
payout_2.stripe_balance_transaction <<  payout_2_balance_transaction_2

payout_3 = StripePayout.create(
    stripe_payout_id: 'po_1HN84zFBTNPFnHZBwVxSjVft',
    amount: 49108,
    arrival_date: Time.at(1599523200).to_datetime,
    automatic: true,
    balance_transaction: 'txn_1HN84zFBTNPFnHZBRE5YzZtX',
    created: Time.at(1599099697).to_datetime,
    currency: 'eur',
    description: 'STRIPE PAYOUT',
    destination: 'ba_1FJJFxFBTNPFnHZBuMAxKlRc',
    failure_balance_transaction: nil,
    failure_code: nil,
    failure_message: nil,
    livemode: false,
    metadata: nil,
    stripe_method: 'standard',
    original_payout: nil,
    reversed_by: nil,
    source_balance: nil,
    source_type: 'card',
    statement_descriptor: nil,
    status: 'paid',
    stripe_type: 'bank_account'
)

payout_3_balance_transaction_1 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1HN84zFBTNPFnHZBRE5YzZtX',
    stripe_object: 'balance_transaction',
    amount: -49108,
    available_on: Time.at(1599523200).to_datetime,
    created: Time.at(1599099697).to_datetime,
    currency: 'eur',
    description: 'STRIPE PAYOUT',
    exchange_rate: nil,
    fee: 0,
    net: -49108,
    reporting_category: 'payout',
    source: 'po_1HN84zFBTNPFnHZBwVxSjVft',
    status: 'available',
    stripe_type: 'payout'
)

payout_3_balance_transaction_2 = StripeBalanceTransaction.create(
    stripe_balance_transaction_id: 'txn_1GMtkuFBTNPFnHZBW38bdtFu',
    stripe_object: 'balance_transaction',
    amount: 49108,
    available_on: Time.at(1584268300).to_datetime,
    created: Time.at(1584268300).to_datetime,
    currency: 'eur',
    description: 'REFUND FOR PAYOUT (STRIPE PAYOUT)',
    exchange_rate: nil,
    fee: 0,
    net: 49108,
    reporting_category: 'payout_reversal',
    source: 'po_1GHiN6FBTNPFnHZBSiareiWD',
    status: 'available',
    stripe_type: 'payout_failure'
)