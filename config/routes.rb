Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'


  resource :profile, only: [:show]
  resources :bins, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  get '/infos', to: 'pages#infos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
