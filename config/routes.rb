Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  resources :communities do
  get '/communities/new', to: 'communities#new'
  get '/communities/:id', to: 'communities#show'

  end
  
  root to: 'posts#index'
end
