Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms, only: [:index, :create, :show], param: :token
end
