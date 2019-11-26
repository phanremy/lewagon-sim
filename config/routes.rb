Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games, only: [:show, :create, :update] do
    resources :game_events, only: [:show, :create, :update]
    get "/rules", to: "pages#rules"
    get "/endgame", to: "pages#endgame"
  end
end
