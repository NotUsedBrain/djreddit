Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  resources :community do
  end
  
  root to: 'posts#index'
end
