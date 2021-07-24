Rails.application.routes.draw do
  devise_for :users
  resources :communities do
    resources :posts
  end
  root to: 'pages#home'
end
