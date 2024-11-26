Rails.application.routes.draw do
  resources :breweries, only: [:index]  
end
