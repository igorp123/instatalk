Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms, only: [:index, :create, :show], param: :token

  mount ActionCable.server => '/cable'
end
