Rails.application.routes.draw do
  defaults format: :json do
    namespace :v1 do
      resources :payouts, only: [:index, :show, :create, :update, :destroy]
    end
  end
end