Rails.application.routes.draw do
  devise_for :users
  resources :communities

  root to: 'pages#home'
end
