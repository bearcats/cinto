Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :songs
  resources :playlists

  get '/main' => 'users#new'

  delete '/sessions' => 'sessions#destroy'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
