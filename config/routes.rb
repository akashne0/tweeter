Rails.application.routes.draw do

  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }

  resources :tweets do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "tweets#index"

end
 