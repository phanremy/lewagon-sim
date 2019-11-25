Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "rules", to: "pages#rules"
  resources :games, only: [:show, :create, :update, :new] do
    resources :game_events, only: [:show, :create, :update]
  end
end
