Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'mimos#index'
  resources :mimos do
    member do
      put 'change_status'
    end
  end
end
