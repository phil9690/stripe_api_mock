Rails.application.routes.draw do
  defaults format: :json do
    namespace :v1 do
      #resources :stripe_payouts, only: [:index, :show, :create, :update, :destroy]

      get 'payouts', to: 'stripe_payouts#index'
      get 'payouts/:id', to: 'stripe_payouts#show'
      
      get '/balance/history', to: 'stripe_balance_history#index'

      get '/balance_transactions', to: 'stripe_balance_transactions#index'
      get '/balance_transactions/:id', to: 'stripe_balance_transactions#show'

      get '/accounts/:id', to: 'stripe_accounts#show'
    end

    get 'oauth/v2/authorize', to: 'oauth#authorize'
    post 'oauth/token', to: 'oauth#token'
  end
end