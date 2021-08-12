Rails.application.routes.draw do
  devise_for :users
  get "u/:username" => "pages#profile", as: :profile

  resources :communities do
    resources :posts
  end

  resources :subscriptions
  resources :comments, only:[:create], only:[:create], defaults: { format: 'js' }
  
  post"post/vote" => "votes#create"
  root to: 'pages#home'
end
