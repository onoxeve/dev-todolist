Rails.application.routes.draw do
  root to: 'toppages#index'
  resources :parenttasks
  resources :childtasks
end
