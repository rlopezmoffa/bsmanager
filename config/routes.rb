Rails.application.routes.draw do
  get 'home/index'
  resources :documents
  resources :images
  root "home#index"

  namespace :api do
    namespace :v1 do
      resources :documents
      resources :images
    end
  end

end
