Rails.application.routes.draw do
  resources :numbers
  root 'numbers#index'

end
