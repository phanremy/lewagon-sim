Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "test_remy", to: 'pages#test_remy'
  resources :games, only: [:show, :create, :update] do
    resources :game_events, only: [:show, :create, :update]
    get "/rules", to: "pages#rules"
  end
end
