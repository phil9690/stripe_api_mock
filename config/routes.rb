Rails.application.routes.draw do
  defaults format: :json do
    namespace :v1 do
      #resources :stripe_payouts, only: [:index, :show, :create, :update, :destroy]

      get 'payouts/:id', to: 'stripe_payouts#show'
      
      get '/balance/history', to: 'stripe_balance_history#index'

      #get '/balance_transactions/:id', to:
    end
  end
end