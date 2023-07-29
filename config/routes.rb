Rails.application.routes.draw do
  devise_for :users

  root to: 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  # creates routes for us
  resources :posts do
    resources :comments
  end

  get '/posts/:id', to: 'posts#show', as: 'show_post'

end
