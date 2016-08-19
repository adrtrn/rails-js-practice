Rails.application.routes.draw do

  root 'employees#index'
  resources :employees, only: [:index, :show]
  resources :badges, only: [:create, :update]
end
