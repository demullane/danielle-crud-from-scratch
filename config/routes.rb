Rails.application.routes.draw do

  resources :status_updates
    get '/like' => 'status_updates#like'

  root 'status_updates#index'


end
