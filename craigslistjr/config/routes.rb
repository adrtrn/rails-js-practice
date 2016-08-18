Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  resources :categories do 
      resources :items
  end

  root :to => 'categories#index'
end
