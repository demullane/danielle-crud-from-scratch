Rails.application.routes.draw do

  resources :status_updates

  root 'status_updates#index'

end
